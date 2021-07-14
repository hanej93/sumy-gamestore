package com.sumy.gamestore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.mapper.ShowGameMapper;
import com.sumy.gamestore.model.GameInfo;

@Service
public class ShowGameService { //메인 페이지
	
	@Autowired
	private ShowGameMapper showGameMapper;
	
	//무료 게임
	public GameInfo selectFreeGame() {
		return showGameMapper.selectFreeGame();
	}
	
	//할인 게임
	public GameInfo selectDiscountGame() {
		return showGameMapper.selectDiscountGame();
	}
	
	//신규 및 인기작
	//1.신규 출시
	public GameInfo selectNewGame() {
		return showGameMapper.selectNewGame();
	}
	
	//2.리뷰 많은 순
	public GameInfo selectMostReviewGame() {
		return showGameMapper.selectMostReviewGame();
	}
	
	//3.전체 이용가
	public GameInfo selectAllUsersGame() {
		return showGameMapper.selectAllUsersGame();
	}
	
	//추천 게임
//	public GameInfo selectRecommendGame() {
//		return showGameMapper.selectRecommendGame();
//	}
	
	//카테고리
//	public GameInfo selectCategoryGame() {
//		return showGameMapper.selectCategoryGame();
//	}
	
	//최근 업데이트
	public GameInfo selectRecentUpdateGame() {
		return showGameMapper.selectRecentUpdateGame();
	}
	
	//최고 인기작
	public GameInfo selectHottestGame() {
		return showGameMapper.selectHottestGame();
	}
	
}
