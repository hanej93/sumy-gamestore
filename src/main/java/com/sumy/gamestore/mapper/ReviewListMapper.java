package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.ReviewList;

@Mapper
public interface ReviewListMapper {
	
	@Select("select * from review_list where review_id = #{reviewId}")
	public ReviewList selectOneByReviewId(int reviewId);
	
	@Update("update review_list set "
			+ "game_id=#{gameId}, "
			+ "user_id = #{userId}, "
			+ "review_text = #{reviewText}, "
			+ "review_like_count = #{reviewLikeCount}, "
			+ "review_report_count = #{reviewReportCount}, "
			+ "review_star_rating = #{reviewStarRating}, "
			+ "review_write_date = #{reviewWriteDate}, "
			+ "review_update_date = #{reviewUpdateDate}, "
			+ " where review_id = #{reviewId}")
	public int updateReview(ReviewList reviewList);
	
	@Delete("delete from review_list where review_id = #{reviewId}")
	public int deleteReview(int reviewId);
	
	// ================================================
	
//	@Select("select count(*) from review_list")
	public int countReviewList(PagingVO vo);

//	@Select("select * from review_list order by review_id desc limit #{start}, #{cntPage}")
	public List<ReviewList> selectReviewList(PagingVO vo);
	
}
