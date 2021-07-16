package com.sumy.gamestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.MyPageService;
import com.sumy.gamestore.service.UpdateUserService;

@Controller
@RequestMapping("/user")
public class MyPageController {

	@Autowired
	MyPageService myPageService;
	
	@Autowired
	UpdateUserService updateUserService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	// 회원 정보 수정 화면
	@GetMapping("/login-security")
	public String test7() {
		return "user/page-login-security-1";
	}

	// 닉네임 업데이트
	@PostMapping("/profileNickNameUpdate")
	public String profileNickNameUpdate(UserInfo userInfo) {
		myPageService.insertUserNickname(userInfo);
		return "닉네임수정";
	}

	// 주소 업데이트
	@PostMapping("/profileAddressUpdate")
	public String profileAddressUpdate(UserInfo userInfo) {
		myPageService.insertUserAddress(userInfo);
		return "주소수정";
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
	
	// 연락처 업데이트
	@PostMapping("/profilePhonesUpdate")
	public String profilePhonesUpdate(UserInfo userInfo) {
		myPageService.insertUserPhoneNumber(userInfo);
		return "연락처수정";
	}
	
	// 비밀번호 업데이트
		@PostMapping("/pwdRecoveryUpdate")
		public String pwdRecoveryUpdate(UserInfo userInfo) {
			
			  String encodePS = bcryptPasswordEncoder.encode(userInfo.getUserPassword());
		      userInfo.setUserPassword(encodePS);//암호화
		      
			updateUserService.pwdRecoveryUpdate(userInfo);
			return "비밀번호수정";
		}
	
	

	//아직 사용 안하는 컨트롤러 두 개 
	
	// 프로필 사진 업데이트
//	@PostMapping("/profileImgUpdate")
//	public String profileImgUpdate() {
//		System.out.println("프로필이미지 변경중");
//		return null;
//	}
//	// 아직 안 쓰는 화면 : 결제 정보 저장 화면
//	@GetMapping("/payment-options")
//	public String test13() {
//		System.out.println("결제정보");
//		return "user/page-payment-options-1";
//	}
}
