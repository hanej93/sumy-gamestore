package com.sumy.gamestore.controller.main.api;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sumy.gamestore.dto.ResponseDto;
import com.sumy.gamestore.model.ReviewList;
import com.sumy.gamestore.model.WishlistGame;
import com.sumy.gamestore.service.WishListService;

@RestController
public class WishlistApiController {
	
	@Autowired
	WishListService wishListService;
	
	@PostMapping("/user/wishlist")
	public ResponseDto<Integer> insertWishlist(@RequestBody WishlistGame wishlistGame){
		
		// 없으면 추가
		WishlistGame inputWishlist = WishlistGame.builder()
												 .wishlistId(0)
												 .gameId(wishlistGame.getGameId())
												 .userId(wishlistGame.getUserId())
												 .wishlistWriteDate(LocalDateTime.now())
												 .build();
		
		wishListService.위시리스트추가(inputWishlist);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@DeleteMapping("/user/wishlist")
	public ResponseDto<Integer> deleteWishlist(@RequestBody WishlistGame wishlistGame){
		
		
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
}
