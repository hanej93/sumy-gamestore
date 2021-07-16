package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.WishlistMapper;
import com.sumy.gamestore.model.WishlistGame;

@Service
public class WishListService {

	@Autowired
	private WishlistMapper wishlistMapper;
	
	public List<WishlistGame> selectWishList(PagingVO vo, WishlistGame wishlistGame) {
		System.out.println(wishlistGame);
		return wishlistMapper.selectWishList(vo);
		
	}
	
}
