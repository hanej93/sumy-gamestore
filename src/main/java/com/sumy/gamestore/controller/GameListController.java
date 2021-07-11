package com.sumy.gamestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.service.GameInfoService;

@Controller
@RequestMapping("/admin")
public class GameListController {
	
	@Autowired
	GameInfoService gameInfoService;
	
	@GetMapping("/game/list")
	public String showGame(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = gameInfoService.게임총개수(vo);
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), vo.getKeyword());
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", gameInfoService.한페이지게임리스트(vo));
		
		return "admin/game_list";
	}
	
	@GetMapping("/game/add")
	public String addGame() {
		
		return "admin/game_add";
	}
	
	@GetMapping("/game/update")
	public String updateGame() {
		
		return "admin/game_update";
	}
	
}
