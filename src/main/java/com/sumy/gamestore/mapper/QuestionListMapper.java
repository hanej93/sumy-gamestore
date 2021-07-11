package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.dto.QuestionListDto;
import com.sumy.gamestore.model.QuestionList;

@Mapper
public interface QuestionListMapper {
	
//	private int reportId;
//	private int reportFromUserId;
//	private int reviewId;
//	private String reportText;
//	private LocalDateTime reportWriteDate;
//	private boolean reportReadYn;
	
	@Select("select * from question_list where report_id = #{questionId}")
	public QuestionList selectOneByQuestionId(int questionId);
	
//	@Update("update set news_title = #{newsTitle}, news_sub_title = #{newsSubTitle}, news_thumb_image = #{newsThumbImage}, "
//			+ "news_text = #{newsText}, news_write_date = #{newsWriteDate}, news_update_date = #{newsUpdateDate} "
//			+ "from news_list where news_id = #{newsId}")
//	public int updateNews(NewsList News);
	
	@Delete("delete from question_list where question_id = #{questionId}")
	public int deleteQuestion(int questionId);
	
	// ================================================
	
	@Select("select count(*) from question_list")
	public int countQuestionList(PagingVO vo);

	@Select("select * from question_list order by question_id desc limit #{start}, #{cntPage}")
	public List<QuestionList> selectQuestionList(PagingVO vo);
	
}
