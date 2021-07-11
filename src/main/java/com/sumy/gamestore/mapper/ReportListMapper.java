package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.ReportList;

@Mapper
public interface ReportListMapper {
	
//	private int reportId;
//	private int reportFromUserId;
//	private int reviewId;
//	private String reportText;
//	private LocalDateTime reportWriteDate;
//	private boolean reportReadYn;
	
	@Select("select * from report_list where report_id = #{reportId}")
	public ReportList selectOneByReportId(int reportId);
	
//	@Update("update set news_title = #{newsTitle}, news_sub_title = #{newsSubTitle}, news_thumb_image = #{newsThumbImage}, "
//			+ "news_text = #{newsText}, news_write_date = #{newsWriteDate}, news_update_date = #{newsUpdateDate} "
//			+ "from news_list where news_id = #{newsId}")
//	public int updateNews(NewsList News);
	
	@Delete("delete from report_list where report_id = #{reportId}")
	public int deleteReport(int reportId);
	
	// ================================================
	
	@Select("select count(*) from report_list")
	public int countReportList();

	@Select("select * from report_list order by report_id desc limit #{start}, #{cntPage}")
	public List<ReportList> selectReportList(PagingVO vo);
	
}
