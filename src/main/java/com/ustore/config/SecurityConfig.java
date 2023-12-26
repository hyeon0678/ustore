package com.ustore.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.stereotype.Component;

import com.ustore.main.service.security.CustomUserdetailsService;
// 주석
@Component
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	@Autowired
	CustomUserdetailsService customUserdetailsService;

	@Autowired
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserdetailsService);
	}
	
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.httpBasic().disable().csrf().disable()
		.authorizeRequests()
		.antMatchers("/", "/main/**").permitAll()
		.and()
		.formLogin()	
			.loginPage("/main/loginform") 	//로그인 페이지를 보여주는 url
			.defaultSuccessUrl("/employee/home", true) //로그인 성공 후 이동 페이지
			.failureUrl("/main/loginerror?login_eror=1")	// 로그이 실패 후 이동 페이지
			.usernameParameter("empIdx")	// 아이디 파라미터 명
			.passwordParameter("empPw")	// 비밀번호 파라미터 명
			.loginProcessingUrl("/login").permitAll()	// 로그인 로직을 진행하는 url
			.and()
			.logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/main/loginform"); // 로그아웃 성공 시 url

		

		return http.build();
	}
}
