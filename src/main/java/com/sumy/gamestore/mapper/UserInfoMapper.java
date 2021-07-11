package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.UserInfo;

@Mapper
public interface UserInfoMapper {
	
	@Select("select * from user_info where user_name = #{user_name}")
	public UserInfo findByUsername(String username);
	
	@Select("select * from user_info where user_id = #{userId}")
	public UserInfo selectOneByUserId(int userId);
	
//	@Update("update set game_title = #{gameTitle}, game_dev = #{gameDev}, game_price = #{gamePrice}, "
//			+ "game_discount_rate = #{gameDiscountRate}, game_sub_text = #{gameSubText}, game_main_text = #{gameMainText}, "
//			+ "game_rate = #{gameRate}, game_thumb_image = #{gameThumbImage}, game_category_id1 = #{gameCategoryId1}, "
//			+ "game_category_id2 = #{gameCategoryId2}, game_category_id3 = #{gameCategoryId3}, "
//			+ "game_category_id4 = #{gameCategoryId4}, game_intro_image1 = #{gameIntroImage1}, "
//			+ "game_intro_image2 = #{gameIntroImage2}, game_intro_image3 = #{gameIntroImage3}, "
//			+ "game_intro_image4 = #{gameIntroImage4}, game_intro_image5 = #{gameIntroImage5}, "
//			+ "game_release_date = #{gameReleaseDate}, game_update_date = #{gameUpdateDate}, "
//			+ "game_sale_count = #{gameSaleCount}, game_total_earnings = #{gameTotalEarnings} "
//			+ "from game_info where game_id = #{gameId}")		
//	public int updateGame(GameInfo game);
	
	@Delete("delete from user_info where user_id = #{userId}")
	public int deleteUser(int userId);

	// ================================================
	
	@Select("select count(*) from user_info")
	public int countUserList();

	@Select("select * from user_info order by user_id desc limit #{start}, #{cntPage}")
	public List<UserInfo> selectUserList(PagingVO vo);
}
