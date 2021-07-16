package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.WishlistGameInfoDto;
import com.sumy.gamestore.mapper.WishlistMapper;

@Service
public class WishListService {

	@Autowired
	private WishlistMapper wishlistMapper;
	
	public List<WishlistGameInfoDto> selectWishListByUserId(int userId) {
		System.out.println(userId);
		return wishlistMapper.selectWishList(userId);
		
	}
	
}
