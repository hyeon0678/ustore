package com.ustore.main.service.security;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ustore.main.dao.EmployeeUserDao;
import com.ustore.utils.MakeRandomPw;

@Service
public class MainService {
	@Autowired
	private EmployeeUserDao dao;
	@Autowired PasswordEncoder encoder;
	
	public String resetPw(HashMap<String, String> map) {
		MakeRandomPw pw = new MakeRandomPw();
		int row = dao.getResetPwEmp(map);
		if(row<=0) {
			return "fail";
		}

		String newPw = pw.makeRandomPw();
		dao.resetPw(encoder.encode(newPw), map.get("empIdx"));
		return newPw;
	}

}
