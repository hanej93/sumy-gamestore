package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.WishlistGameInfoDto;
import com.sumy.gamestore.mapper.WishlistMapper;
import com.sumy.gamestore.model.WishlistGame;

@Service
public class WishListService {

	@Autowired
	private WishlistMapper wishlistMapper;
	
	public List<WishlistGameInfoDto> selectWishListByUserId(int userId) {
		return wishlistMapper.selectWishList(userId);
		
	}
	
	public int 위시리스트추가(WishlistGame wishlistGame) {
		return wishlistMapper.insertWishlist(wishlistGame);
	}
	
}
