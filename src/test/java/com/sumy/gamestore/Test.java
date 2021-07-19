package com.sumy.gamestore;


import static org.junit.Assert.assertNotNull;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/WEB-INF/spring/root-context.xml")
public class Test {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	//String encodePS = bcryptPasswordEncoder.encode(userInfo.getUserPassword());

	
	@Autowired
	DriverManagerDataSource dataSource;
	@org.junit.Test
	public void test() {
		assertNotNull(dataSource);
		System.out.println(bCryptPasswordEncoder.encode("zszerere@#@&&^^Y"));
	}
	
	
	

}
