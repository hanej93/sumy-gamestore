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
	
	public int 게임수정(GameInfo gameInfo) {
		return gameInfoMapper.updateGame(gameInfo);
	}
	
	
	
	//트랜잭션 구현 고려
//	public int 리포트삭제(int gameId) {
//		return gameInfoMapper.deleteReportList(gameId);
//	}
	
	public int 리뷰삭제(int gameId) {
		return gameInfoMapper.deleteReview(gameId);
	}

	public int 위시리스트삭제(int gameId) {
		return gameInfoMapper.deleteWishListGame(gameId);
	}
	
	public int 구매한게임삭제(int gameId) {
		return gameInfoMapper.deletePurchasedGameList(gameId);
	}
	
	public int 게임삭제(int gameId) {
		// 1. 리뷰리스트를 게임 아이디로 조회해서 해당 리뷰아이디를 List<> 로 받아옴
		// List<Integer> deleteReviewIdList = 1번의 결과;
		List<Integer> deleteReviewIdList = gameInfoMapper.reviewIdList(gameId);
		
		// 2. 받아온 리스트에 해당 되는 리뷰 아이디를 반복해서 제거
		for(int reviewId : deleteReviewIdList){
			gameInfoMapper.deleteReportList(reviewId);
		}
		
		// -> 리포트 삭제 완료! -> 리포트 삭제가 되었으니 리뷰삭제가능하겠죠??
		gameInfoMapper.deleteReview(gameId);
		gameInfoMapper.deleteWishListGame(gameId);
		gameInfoMapper.deletePurchasedGameList(gameId);
		
		return gameInfoMapper.deleteGame(gameId);
	}
}
