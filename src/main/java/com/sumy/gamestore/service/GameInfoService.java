package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.GameInfoMapper;
import com.sumy.gamestore.model.GameInfo;

@Service
public class GameInfoService {

	@Autowired
	private GameInfoMapper gameInfoMapper;
	
	public int 게임추가(GameInfo gameInfo) {
		return gameInfoMapper.insertGame(gameInfo);
	}
	
	// 총 게임 갯수 조회
	public int 게임총개수(PagingVO vo) {
		return gameInfoMapper.countGameList(vo);
	}
	
	// 한 페이지 게임 리스트 조회
	public List<GameInfo> 한페이지게임리스트(PagingVO vo){
		return gameInfoMapper.selectGameList(vo);
	}
	
	public GameInfo 게임검색(int gameId) {
		GameInfo gameInfo = gameInfoMapper.selectOneByGameId(gameId);
		return gameInfo;
	}
	
	//빌더패턴 주석 걸어놓았어요
	public GameInfo 게임수정(GameInfo gameInfo) {
		int affectedRows = gameInfoMapper.updateGame(gameInfo);
		
		if(affectedRows ==1) {
			return new GameInfo(gameInfo.getGameId(), gameInfo.getGameTitle(), gameInfo.getGameDev(), gameInfo.getGamePrice(), 
					gameInfo.getGameDiscountRate(), gameInfo.getGameSubText(), gameInfo.getGameMainText(), gameInfo.getGameRate(), 
					gameInfo.getGameThumbImage(), gameInfo.getGameCategoryId1(), gameInfo.getGameCategoryId2(), 
					gameInfo.getGameCategoryId3(), gameInfo.getGameCategoryId4(), gameInfo.getGameIntroImage1(), 
					gameInfo.getGameIntroImage2(), gameInfo.getGameIntroImage3(), gameInfo.getGameIntroImage4(), 
					gameInfo.getGameIntroImage5(), gameInfo.getGameReleaseDate(), gameInfo.getGameUpdateDate(), 
					gameInfo.getGameSaleCount(), gameInfo.getGameTotalEarnings());
			
		}else {
			return null;
		}	
		
		/*
		 * int affectedRows = gameInfoMapper.updateGame(gameInfo);
		 * 
		 * if(affectedRows ==1) { GameInfo updateGame = GameInfo.builder()
		 * .gameTitle(gameInfo.getGameTitle()) .gameDev(gameInfo.getGameDev())
		 * .gamePrice(gameInfo.getGamePrice())
		 * .gameDiscountRate(gameInfo.getGameDiscountRate())
		 * .gameSubText(gameInfo.getGameSubText())
		 * .gameMainText(gameInfo.getGameMainText()) .gameRate(gameInfo.getGameRate())
		 * .gameThumbImage(gameInfo.getGameThumbImage())
		 * .gameCategoryId1(gameInfo.getGameCategoryId1())
		 * .gameCategoryId2(gameInfo.getGameCategoryId2())
		 * .gameCategoryId3(gameInfo.getGameCategoryId3())
		 * .gameCategoryId4(gameInfo.getGameCategoryId4())
		 * .gameIntroImage1(gameInfo.getGameIntroImage1())
		 * .gameIntroImage2(gameInfo.getGameIntroImage2())
		 * .gameIntroImage3(gameInfo.getGameIntroImage3())
		 * .gameIntroImage4(gameInfo.getGameIntroImage4())
		 * .gameIntroImage5(gameInfo.getGameIntroImage5())
		 * .gameReleaseDate(gameInfo.getGameReleaseDate())
		 * .gameUpdateDate(gameInfo.getGameUpdateDate())
		 * .gameSaleCount(gameInfo.getGameSaleCount())
		 * .gameTotalEarnings(gameInfo.getGameTotalEarnings()) .build(); return
		 * updateGame; }else { return null; }
		 */
	}
	
	public int 게임삭제(int gameId) {
		return gameInfoMapper.deleteGame(gameId);
	}
}
