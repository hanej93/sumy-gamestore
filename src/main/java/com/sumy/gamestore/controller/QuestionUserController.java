package com.sumy.gamestore.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sumy.gamestore.model.QuestionList;
import com.sumy.gamestore.service.QuestionUserService;

@Controller
public class QuestionUserController {
	
	@Autowired
	QuestionUserService questionUserService;
	
	//메인 페이지
		//@GetMapping(value = {"/home-page", "/", ""})
		public String test1(Model model) {			
			QuestionList questionList = questionUserService.questionInsert(null);
			model.addAttribute("questionList", questionList);
			
			
			return "user/home-page-1";
			//문의 하기 설정
		}

}
