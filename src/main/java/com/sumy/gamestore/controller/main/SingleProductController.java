package com.sumy.gamestore.controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.sumy.gamestore.service.GameInfoService;

@Controller
public class SingleProductController {
	
	
	@Autowired
	GameInfoService gameInfoService;
	
	@GetMapping("/sumy/single-product/{gameId}")
	public String showPage(@PathVariable int gameId, Model model) {
		
		model.addAttribute("gameInfo",gameInfoService.게임검색(gameId));
		System.out.println(gameInfoService.게임검색(gameId));
		
		return "user/page-single-product-1";
	}
	
}

