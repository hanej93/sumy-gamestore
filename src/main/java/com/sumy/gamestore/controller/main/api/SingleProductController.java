package com.sumy.gamestore.controller.main.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sumy.gamestore.service.GameInfoService;

@Controller
public class SingleProductController {
	
	
	@Autowired
	GameInfoService gameInfoService;
	
	@GetMapping("/sumy/single-product")
	public String showPage(Model model) {
		
		
		return "user/page-single-product-1";
	}
	
}
