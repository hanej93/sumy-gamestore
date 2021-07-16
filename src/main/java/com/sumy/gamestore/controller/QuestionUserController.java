package com.sumy.gamestore.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sumy.gamestore.model.QuestionList;
import com.sumy.gamestore.service.QuestionUserService;

@Controller
public class QuestionUserController {
	
	@Autowired
	QuestionUserService questionUserService;
	
	//메인 페이지
	@ResponseBody
	@PostMapping("/questionModal")
	public String test1(QuestionList questionList) {
		int row = questionUserService.questionInsert(questionList);
		return "문의하기 성공";
		//문의 하기 설정
	}

}
