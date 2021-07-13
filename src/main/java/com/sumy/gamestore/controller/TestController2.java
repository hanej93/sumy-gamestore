package com.sumy.gamestore.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.JoinedUserService;
import com.sumy.gamestore.service.MailSendService;

@Controller
@RequestMapping("/user")
public class TestController2 {
	
	@Autowired
	JoinedUserService joinedUserService;

	// 메인 화면
	@GetMapping("home-page-1")
	public String test1() {

		return "user/home-page-1";
	}

	// 카탈로그 화면
	@GetMapping("catalogue-page")
	public String test2() {

		return "user/catalogue-page";
	}

	// 게임 상세 화면
	@GetMapping("page-single-product-1")
	public String test3() {

		return "user/page-single-product-1";
	}

	// 리뷰 화면
	@GetMapping("reviewMore-page")
	public String test4() {

		return "user/reviewMore-page";
	}

	// Q&A화면
	@GetMapping("page-help-1")
	public String test5() {

		return "user/page-help-1";
	}

	// 회원 정보 수정 화면
	@GetMapping("page-login-security-1")
	public String test7() {

		return "user/page-login-security-1";
	}

	// 주문 내역 화면
	@GetMapping("page-orders-1")
	public String test9() {

		return "user/page-orders-1";
	}

	// 뉴스 화면
	@GetMapping("page-our-stores-1")
	public String test10() {

		return "user/page-our-stores-1";
	}

	// 뉴스 상세 화면
	@GetMapping("page-our-stores-2")
	public String test11() {

		return "user/page-our-stores-2";
	}

	// 위시리스트 화면
	@GetMapping("page-wishlist-1")
	public String test15() {

		return "user/page-wishlist-1";
	}

	// 아직 안 쓰는 화면 : 결제 정보 저장 화면
	@GetMapping("page-payment-options-1")
	public String test13() {

		return "user/page-payment-options-1";
	}
}
