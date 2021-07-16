package com.sumy.gamestore.controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sumy.gamestore.service.OrdersService;

@Controller
public class OrdersController {
	
	@Autowired
	OrdersService ordersService;
	
	//메인 페이지
	@GetMapping(value = {"/user/purchased"})
	public String showOrders(Model model) {
		
		
		
		
	     return "user/page-purchased-1";
	}
	

}
