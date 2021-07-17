package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.dto.WishlistGameInfoDto;
import com.sumy.gamestore.model.WishlistGame;

@Mapper
public interface WishlistMapper {

	// ================================================
	@Select("select * from wishlist_game as w "
			+ "join game_info as g "
			+ "on w.game_id = g.game_id where user_id = #{userId} order by wishlist_id desc ")
	public List<WishlistGameInfoDto> selectWishList(int userId);

	@Insert("insert into wishlist_game values(#{wishlistId}, #{gameId}, #{userId}, #{wishlistWriteDate})")
	public int insertWishlist(WishlistGame wishlistGame);
	
}
