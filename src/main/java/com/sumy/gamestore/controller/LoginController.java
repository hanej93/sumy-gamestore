package com.sumy.gamestore.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.JoinedUserService;
import com.sumy.gamestore.service.LoginUserService;
import com.sumy.gamestore.service.MailSendService;

@Controller
@RequestMapping("/sumy")
public class LoginController {
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	JoinedUserService joinedUserService;
	
	@Autowired
	LoginUserService loginUserService;

	// 로그인 화면
	@GetMapping("/login")
	public String test1() {
		
		return "user/page-login-1";
	}
	
	//로그인 완료 화면
	@PostMapping("/loginSuccess")
	public String test2(UserInfo userInfo) {
		System.out.println(userInfo);
//		userInfo.setUserJoinedDate(LocalDate.now());// 가입날짜 세팅
//		userInfo.setUserAuthorityRate("ROLE_USER");// 사용자 계정 세팅
//		int total = joinedUserService.addUser(userInfo);
		loginUserService.selectUser(userInfo);
		
//		if(!loginUserService.selectUser(userInfo)) {
//			System.out.println("로그인 실패");
//		}
//		System.out.println("로그인 성공");
		return "user/home-page-1";
	}
	
	// 비밀번호 찾기 화면
	@GetMapping("/page-password-recovery-1")
	public String test12() {

		return "user/page-password-recovery-1";
	}
	
	//프로필 변경
	@ResponseBody
	@PostMapping("/profileImgAdd")
	public String test17(@RequestPart(value = "file", required = false) MultipartFile file) {
		System.out.println(file.getOriginalFilename());
		
		if (file == null || file.isEmpty()) {
            System.out.println("파일이 없음");
        }

        // 현재 날짜 조회 - ex) 2021-07-07
        String currentDate = LocalDate.now().toString();
        // 파일 저장 경로 (현재 날짜를 포함) - ex) C:/upload/2021-07-07/
        String uploadFilePath = "C:\\upload\\" + currentDate + "/";

        // 파일 확장자 ex) jpg, png ..
        String prefix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1,
                file.getOriginalFilename().length());

        // 랜덤아이디로 파일명 생성
        String filename = UUID.randomUUID().toString() + "." + prefix;

        // 폴더가 없다면 생성
        File folder = new File(uploadFilePath);
        if (!folder.isDirectory()) {
            folder.mkdirs();
        }

        // 실제 저장되는 위치
        String pathname = uploadFilePath + filename;
        // 가상 가상 파일 위치 - ex) /upload/2021-07-07/파일명.jpg
        String resourcePathname = "/upload/" + currentDate + "/" + filename;
        File dest = new File(pathname);
        try {
            file.transferTo(dest);

        } catch (IllegalStateException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return resourcePathname;
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
		String encodePS = bcryptPasswordEncoder.encode(userInfo.getUserPassword());
		userInfo.setUserPassword(encodePS);//암호화
		int total = joinedUserService.addUser(userInfo);
		return "sumy/home-page-1";
	}
}
