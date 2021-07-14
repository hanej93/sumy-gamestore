package com.sumy.gamestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sumy.gamestore.service.ShowGameService;
import com.sumy.gamestore.service.ShowNewsService;

@Controller
@RequestMapping("/main")
public class MainPageController {
	
	@Autowired
	ShowGameService showGameService;
	
	@Autowired
	ShowNewsService showNewsService;
	
	//메인 페이지
	@GetMapping("/home-page")
	public String test1() {
		return "user/home-page-1";
	}
	

}
