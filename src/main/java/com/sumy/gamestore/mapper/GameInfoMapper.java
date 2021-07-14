package com.sumy.gamestore.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.GameInfo;



@Mapper
public interface GameInfoMapper {
	
	@Insert("insert into game_info "
			+ "values(#{gameId}, #{gameTitle}, #{gameDev}, #{gamePrice}, #{gameDiscountRate}"
			+ ", #{gameSubText}, #{gameMainText}, #{gameRate}, #{gameThumbImage}"
			+ ", #{gameCategoryId1}, #{gameCategoryId2}, #{gameCategoryId3}, #{gameCategoryId4}"
			+ ", #{gameIntroImage1}, #{gameIntroImage2}, #{gameIntroImage3}, #{gameIntroImage4}, #{gameIntroImage5}"
			+ ", #{gameReleaseDate}, #{gameUpdateDate}, #{gameSaleCount}, #{gameTotalEarnings})")
	public int insertGame(GameInfo game);
	
	@Select("select * from game_info where game_id = #{gameId}")
	public GameInfo selectOneByGameId(int gameId);
	
	@Update("update game_info set game_title = #{gameTitle}, game_dev = #{gameDev}, game_price = #{gamePrice}, "
			+ "game_discount_rate = #{gameDiscountRate}, game_sub_text = #{gameSubText}, game_main_text = #{gameMainText}, "
			+ "game_rate = #{gameRate}, game_thumb_image = #{gameThumbImage}, game_category_id1 = #{gameCategoryId1}, "
			+ "game_category_id2 = #{gameCategoryId2}, game_category_id3 = #{gameCategoryId3}, "
			+ "game_category_id4 = #{gameCategoryId4}, game_intro_image1 = #{gameIntroImage1}, "
			+ "game_intro_image2 = #{gameIntroImage2}, game_intro_image3 = #{gameIntroImage3}, "
			+ "game_intro_image4 = #{gameIntroImage4}, game_intro_image5 = #{gameIntroImage5}, "
			+ "game_release_date = #{gameReleaseDate}, game_update_date = #{gameUpdateDate}, "
			+ "game_sale_count = #{gameSaleCount}, game_total_earnings = #{gameTotalEarnings} "
			+ "where game_id = #{gameId}")		
	public int updateGame(GameInfo game);
	
	@Delete("delete from game_Info where game_id = #{gameId}")
	public int deleteGame(int gameId);
	

	// ================================================
	
	//@Select("select count(*) from game_info")
	public int countGameList(PagingVO vo);

	//@Select("select * from game_info order by game_id desc limit #{start}, #{cntPage}")
	public List<GameInfo> selectGameList(PagingVO vo);
	
	
}
