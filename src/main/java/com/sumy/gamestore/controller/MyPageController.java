package com.sumy.gamestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.sumy.gamestore.service.UpdateUserService;


@Controller
@RequestMapping("/sumy")
public class MyPageController {
	
	@Autowired
	UpdateUserService updateUserService;

	// 회원 정보 수정 화면
	@GetMapping("/login-security")
	public String test7() {
		System.out.println("회원정보수정");
		return "user/page-login-security-1";
	}
	
	// 프로필 사진 업데이트
	@PostMapping("/profileImgUpdate")
	public String profileImgUpdate(@RequestPart(value = "file", required = false) MultipartFile file) {
		System.out.println("프로필이미지 변경중");
	}

	// 주문 내역 화면
	@GetMapping("/orders")
	public String test9() {
		System.out.println("주문내역");
		return "user/page-orders-1";
	}

	// 위시리스트 화면
	@GetMapping("/wishlist")
	public String test15() {
		System.out.println("위시리스트");
		return "user/page-wishlist-1";
	}

	// 아직 안 쓰는 화면 : 결제 정보 저장 화면
	@GetMapping("/payment-options")
	public String test13() {
		System.out.println("결제정보");
		return "user/page-payment-options-1";
	}
}
