package com.sumy.gamestore.controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumy.gamestore.config.auth.PrincipalDetail;
import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.service.GameInfoService;
import com.sumy.gamestore.service.ReviewListService;

@Controller
public class SingleProductController {
	
	
	@Autowired
	GameInfoService gameInfoService;
	
	@Autowired
	ReviewListService reviewListService;
	
	@GetMapping("/sumy/single-product/{gameId}")
	public String showSingleProduct(@PathVariable int gameId, Model model) {
		
		model.addAttribute("gameInfo", gameInfoService.게임검색(gameId));
		model.addAttribute("reviewList", reviewListService.리뷰검색_게임아이디_5(gameId));
		
		System.out.println(gameInfoService.게임검색(gameId));
		System.out.println(reviewListService.리뷰검색_게임아이디_5(gameId));
		
		return "user/page-single-product-1";
	}
	
	@GetMapping("/sumy/single-product/{gameId}/review")
	public String showReview(@PathVariable int gameId, PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage
			, @RequestParam(value="principal", required=false)PrincipalDetail principal) {
		
		int total = reviewListService.리뷰총개수_게임아이디(gameId, vo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("gameInfo", gameInfoService.게임검색(gameId));
		model.addAttribute("reviewList", reviewListService.리뷰검색_게임아이디(gameId, vo));
		
		if(principal != null) {
			// 로그인한 아이디로 리뷰조회 갯수 -> 0이면 리뷰 작성 가능!
			model.addAttribute("userReviewCnt", reviewListService.유저아이디개수_이메일(principal.getUsername(), gameId));
		}
		return "user/reviewMore-page";
	}
}

