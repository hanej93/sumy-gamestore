package com.sumy.gamestore.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.GameInfoMapper;
import com.sumy.gamestore.mapper.PaymentMapper;
import com.sumy.gamestore.model.GameInfo;
import com.sumy.gamestore.model.PurchasedGameList;

@Service
public class PaymentService {

	@Autowired
	private PaymentMapper paymentMapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int insertPurchasedGame(PurchasedGameList purchasedGameList) {
//		purchasedGameList.setPurchasedWriteDate(LocalDateTime.now());//구매날짜 세팅
		int row = paymentMapper.insertPurchasedGame(purchasedGameList);
		return row;
	}
	
	public int updateGameSaleCountAndGameTotalEarnings(List<GameInfo> gameInfoList) {
		//game_sale_count
		//gameInfoList.size(); 구매개수
//		gameInfoList.
		for(GameInfo gameInfo : gameInfoList) {
			gameInfo.getGamePrice();
		}
//		int row = paymentMapper.updateGameSaleCountAndGameTotalEarnings(gameInfoList.size(), );
		return 1;
	}
}
