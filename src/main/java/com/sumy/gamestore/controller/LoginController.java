package com.sumy.gamestore.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	JoinedUserService joinedUserService;

	// 회원가입 화면
	@GetMapping("/join")
	public String test14() {

		return "user/page-signup-1";
	}

	@ResponseBody
	@GetMapping("/checkMail")
	public String SendMail(String mail, HttpSession session, Model model) {
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

	// 회원가입 완료 화면
	@PostMapping("/joinedSuccess")
	public String test8(UserInfo userInfo) {
		int total = joinedUserService.addUser(userInfo);
		System.out.println(total);
		return "user/page-order-completed-1";
	}
}
