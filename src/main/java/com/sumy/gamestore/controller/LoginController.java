package com.sumy.gamestore.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.JoinedUserService;
import com.sumy.gamestore.service.MailSendService;

@Controller
@RequestMapping("/user")
public class LoginController {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	JoinedUserService joinedUserService;

	// 로그인 화면
	@GetMapping("/login")
	public String test1() {
		
		return "user/page-login-1";
	}
	
	//로그인 완료 화면
	@PostMapping("/loginSuccess")
	public String test2(UserInfo userInfo) {
		System.out.println(userInfo);
		userInfo.setUserJoinedDate(LocalDate.now());// 가입날짜 세팅
		userInfo.setUserAuthorityRate("ROLE_USER");// 사용자 계정 세팅
		int total = joinedUserService.addUser(userInfo);
		return "user/home-page-1";
	}
	
	// 비밀번호 찾기 화면
	@GetMapping("/page-password-recovery-1")
	public String test12() {

		return "user/page-password-recovery-1";
	}
	
	// 회원가입 화면
	@GetMapping("/join")
	public String test14() {

		return "user/page-signup-1";
	}

	@ResponseBody
	@GetMapping("/checkMail")
	public String SendMail(String mail, Model model) {
		MailSendService mss = new MailSendService();
		String authKey = mss.sendAuthMail(mail);// 인증메일 전송
		model.addAttribute("authKey", authKey);
		System.out.println("인증보내떠!");
		return authKey;
	}

	// 주소 api 화면(popup)
	@GetMapping("/jusoPopup")
	public String test17() {

		return "user/jusoPopup";
	}

	// 주소 api 화면(popup)
	@PostMapping("/jusoPopup")
	public String test18() {

		return "user/jusoPopup";
	}

	// 회원가입 완료 화면
	@PostMapping("/joinedSuccess")
	public String test8(UserInfo userInfo) {
		System.out.println(userInfo);
		userInfo.setUserJoinedDate(LocalDate.now());// 가입날짜 세팅
		userInfo.setUserAuthorityRate("ROLE_USER");// 사용자 계정 세팅
		String encodePS = bcryptPasswordEncoder.encode(userInfo.getUserPassword());
		userInfo.setUserPassword(encodePS);//암호화
		int total = joinedUserService.addUser(userInfo);
		return "user/home-page-1";
	}
}
