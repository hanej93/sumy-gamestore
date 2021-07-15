package com.sumy.gamestore.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity // 시큐리티를 활성화시키겠다!!
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // 시큐리티기능 중 부가적인 메소드를 활성시키는 것
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Bean // Bean 어노테이션 : 반환하는 객체를 빈 객체로 등록
	public BCryptPasswordEncoder encodePwd( ) {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable(); // csrf 해킹을 막는 기능인데 이것을 비활성화
		http.authorizeRequests()  // url 요청에 관한 세팅
			//.antMatchers("/user/**").authenticated()
			.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
			//.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
			.anyRequest().permitAll()
			.and()
			.formLogin()
			.loginPage("/sumy/login")
			.loginProcessingUrl("/loginProc") //login 주소가 호출이 되면 시큐리티가 낚아채서 대신 로그인을 진행
			.defaultSuccessUrl("/"); 
			
	}
}
