package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.WishlistGame;

@Mapper
public interface WishlistMapper {

	// ================================================

	@Select("select count(*) from wishlist_game")
	public int countWishlist(PagingVO vo);

	@Select("select * from wishlist_game order by wishlist_id desc limit #{start}, #{cntPage}")
	public List<WishlistGame> selectWishList(PagingVO vo);

}
