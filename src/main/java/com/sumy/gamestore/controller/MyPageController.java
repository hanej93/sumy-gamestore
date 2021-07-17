package com.sumy.gamestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.MyPageService;
import com.sumy.gamestore.service.UpdateUserService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;

	@Autowired
	UpdateUserService updateUserService;

	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	// 회원 정보 수정 화면
	@GetMapping("/user/login-security")
	public String test7() {
		return "user/page-login-security-1";
	}

	// 닉네임 업데이트
	@PostMapping("/user/profileNickNameUpdate")
	public String profileNickNameUpdate(UserInfo userInfo) {
		myPageService.insertUserNickname(userInfo);
		return "닉네임수정";
	}

	// 주소 업데이트
	@PostMapping("/user/profileAddressUpdate")
	public String profileAddressUpdate(UserInfo userInfo) {
		myPageService.insertUserAddress(userInfo);
		return "주소수정";
	}

	// 주소 api 화면(popup)
	@GetMapping("/user/jusoPopup")
	public String test17() {
		return "user/jusoPopup";
	}

	// 주소 api 화면(popup)
	@PostMapping("/user/jusoPopup")
	public String test18() {
		return "user/jusoPopup";
	}

	// 연락처 업데이트
	@PostMapping("/user/profilePhonesUpdate")
	public String profilePhonesUpdate(UserInfo userInfo) {
		myPageService.insertUserPhoneNumber(userInfo);
		return "연락처수정";
	}

	// 비밀번호 변경 화면
	@GetMapping("/user/pwdRecovery")
	public String pwdRecovery() {
		return "user/page-login-security-1";
	}
	
	//비밀번호 변경할 이메일 찾기(로그인 안한 유저)
	@PostMapping("/selectEmail")
	@ResponseBody
	public int selectEmail(@RequestParam(value = "userEmail") String userEmail) {
		System.out.println("컨트롤러에서 받은 유저 이메일 : "+userEmail);
		UserInfo userInfo = new UserInfo();
		userInfo.setUserEmail(userEmail);
		int result = updateUserService.selectUserEmail(userInfo);
		if(result==0) {
			return 0;
		}
		
		return result;
	}

	// 비밀번호 업데이트
	@PostMapping("/user/pwdRecoveryUpdate")
	@ResponseBody
	public String pwdRecoveryUpdate(UserInfo userInfo) {
		System.out.println("컨트롤러에서 받은 유저 아이디 : "+userInfo.getUserId());
		System.out.println("컨트롤러에서 받은 유저 이메일 : "+userInfo.getUserEmail());
		System.out.println("컨트롤러에서 받은 유저 비밀번호 : "+userInfo.getUserPassword());
		String encodePS = bcryptPasswordEncoder.encode(userInfo.getUserPassword());
		System.out.println("인코딩 된 비밀번호 : "+encodePS);
		userInfo.setUserPassword(encodePS);// 암호화

		updateUserService.pwdRecoveryUpdate(userInfo);
		return "비밀번호수정";
	}

	// 아직 사용 안하는 컨트롤러 두 개

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
