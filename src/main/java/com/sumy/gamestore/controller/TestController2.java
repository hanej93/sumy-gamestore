package com.sumy.gamestore.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sumy.gamestore.dto.ResponseDto;
import com.sumy.gamestore.service.MailSendService;

@Controller
@RequestMapping("/user")
public class TestController2 {

	// 메인 화면
	@GetMapping("/game/home-page-1")
	public String test1() {

		return "user/home-page-1";
	}

	// 카탈로그 화면
	@GetMapping("/game/catalogue-page")
	public String test2() {

		return "user/catalogue-page";
	}

	// 게임 상세 화면
	@GetMapping("/game/page-single-product-1")
	public String test3() {

		return "user/page-single-product-1";
	}

	// 리뷰 화면
	@GetMapping("/game/reviewMore-page")
	public String test4() {

		return "user/reviewMore-page";
	}

	// Q&A화면
	@GetMapping("/game/page-help-1")
	public String test5() {

		return "user/page-help-1";
	}

	// 로그인 화면
	@GetMapping("/game/page-login-1")
	public String test6() {

		return "user/page-login-1";
	}

	// 회원 정보 수정 화면
	@GetMapping("/game/page-login-security-1")
	public String test7() {

		return "user/page-login-security-1";
	}

	// 주문 내역 화면
	@GetMapping("/game/page-orders-1")
	public String test9() {

		return "user/page-orders-1";
	}

	// 뉴스 화면
	@GetMapping("/game/page-our-stores-1")
	public String test10() {

		return "user/page-our-stores-1";
	}

	// 뉴스 상세 화면
	@GetMapping("/game/page-our-stores-2")
	public String test11() {

		return "user/page-our-stores-2";
	}

	// 비밀번호 찾기 화면
	@GetMapping("/game/page-password-recovery-1")
	public String test12() {

		return "user/page-password-recovery-1";
	}

	// 회원가입 화면
	@GetMapping("/game/page-signup-1")
	public String test14() {

		return "user/page-signup-1";
	}
	
	@ResponseBody
	@GetMapping("/game/checkMail")
	public String SendMail(String mail, HttpSession session, Model model){
		MailSendService mss = new MailSendService();
		String authKey = mss.sendAuthMail(mail);//인증메일 전송
		model.addAttribute("authKey", authKey);
		System.out.println("인증보내떠!");
		return authKey;
	}

	// 위시리스트 화면
	@GetMapping("/game/page-wishlist-1")
	public String test15() {

		return "user/page-wishlist-1";
	}

	// 주소 api 화면(TEST01)
//	@GetMapping("/game/juso")
//	public String test16() {
//
//		return "test/jsp_sample/Sample";
//	}

	// 주소 api 화면(popup2)
//	@PostMapping("/game/juso")
//	public String test18() {
//
//		return "test/jsp_sample/Sample";
//	}

	// 주소 api 화면(TEST01) get, post
	@RequestMapping(value = "/game/juso", method = { RequestMethod.GET, RequestMethod.POST })
	public String test18() {
		System.out.println("여기 탔다!");
		return "test/jsp_sample/Sample";
	}

	// 주소 api 화면(popup)
	@GetMapping("/game/jusoPopup")
	public String test17() {

		return "user/jusoPopup";
	}

	// 주소 api 화면(popup)
	@PostMapping("/game/jusoPopup")
	public String test19() {

		return "user/jusoPopup";
	}
	
	// 회원가입 완료 화면
//	@PostMapping("/game/joinedSuccess")
//	public String test8(@RequestParam(value = "title") String title,) {
//		
//		return "user/page-order-completed-1";
//	}

	// 아직 안 쓰는 화면 : 결제 정보 저장 화면
	@GetMapping("/game/page-payment-options-1")
	public String test13() {

		return "user/page-payment-options-1";
	}
}
