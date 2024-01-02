package com.ustore.main.service.security;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.ustore.employee.dto.DeptDto;
import com.ustore.main.dao.EmployeeUserDao;
import com.ustore.main.dto.EmployeeUserDto;

@Service
public class CustomUserdetailsService implements UserDetailsService{
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	EmployeeUserDao employeeUserDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		logger.info("스프링 시큐리티 로그인");
		EmployeeUserDto customUser = employeeUserDao.getUser(username);
		if(customUser == null)
			throw new UsernameNotFoundException("아이디에 해당하는 사용자를 찾을 수 없습니다");
		
		CustomUserDetails customUserDetails = new CustomUserDetails();
		customUserDetails.setUsername(customUser.getEmpIdx());
		customUserDetails.setPassword(customUser.getEmpPw());
		customUserDetails.setDepartment(customUser.getDepartment());
		customUserDetails.setPosition(customUser.getPosition());
		customUserDetails.setName(customUser.getName());
		
		
		List<String> customRoles = findRoles(customUser.getDeptName(), customUser.getParentDeptId(), customUser.getDeptId());
		customRoles.add(customUser.getPositionName());
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		if(customRoles != null) {
			for(String role : customRoles) {
				authorities.add(new SimpleGrantedAuthority(role));
			}
		}
		
		// CustomUserDetails객체에 권한 목록 (authorities)를 설정한다.
        customUserDetails.setAuthorities(authorities);
        customUserDetails.setEnabled(true);
        customUserDetails.setAccountNonExpired(true);
        customUserDetails.setAccountNonLocked(true);
        customUserDetails.setCredentialsNonExpired(true);
        return customUserDetails;
	}
	
	public List<String> findRoles(String deptName, int parentDeptId, int deptId) {
		
		List<String> roleList = new ArrayList<>();
		roleList.add(deptName);
		
		int currentParentRoleNum = parentDeptId;//자신의 상위 부서 넣기
		List<DeptDto> roles = employeeUserDao.getDeptList(deptId);
		
		for(DeptDto dto : roles) { 
			if(dto.getDeptId() == currentParentRoleNum && dto.getParentDeptId() != 0) {
				roleList.add(dto.getDeptName());
				currentParentRoleNum = dto.getParentDeptId();
			}
		}
		return roleList;
	}
	
}
