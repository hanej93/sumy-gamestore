package com.sumy.gamestore.controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sumy.gamestore.service.WishListService;

@Controller
public class WishlistController {
	
	@Autowired
	WishListService wishListService;
	
	//메인 페이지
	@GetMapping(value = {"/user/wishlist"})
	public String showWishList(Model model) {
		
		
		
		
	     return "user/page-wishlist-1";
	}
	

}
