package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.ReportListMapper;
import com.sumy.gamestore.model.ReportList;

@Service
public class ReportListService {

	@Autowired
	private ReportListMapper reportListMapper;

//	private int reportId;					// 0넣으면 됨
//	private int reportFromUserId;			// 유저 아이디
//	private int reviewId;					// 리뷰 아이디
//	private String reportText;
//	private LocalDateTime reportWriteDate;
//	private boolean reportReadYn;
	
	// 총 신고 갯수 조회
	public int 신고총개수(PagingVO vo) {
		return reportListMapper.countReportList(vo);
	}
	
	// 한 페이지 신고 리스트 조회
	public List<ReportList> 한페이지신고리스트(PagingVO vo){
		return reportListMapper.selectReportList(vo);
	}
	
	public ReportList 신고검색(int reportId) {
		ReportList reportList = reportListMapper.selectOneByReportId(reportId);
		return reportList;
	}
	
//	public ReportList 신고수정(ReportList reportList) {
//		
//		int affectedRows = reportListMapper.updateNews(reportList);
//		
//		if(affectedRows ==1) {
//			return new NewsList(newsList.getNewsId(), newsList.getNewsTitle(), newsList.getNewsSubTitle(), 
//			newsList.getNewsThumbImage(), newsList.getNewsText(), newsList.getNewsWriteDate(),newsList.getNewsUpdateDate());	
//		}else {
//			return null;
//		}	
//	}
	
	public int 신고삭제(int reportId) {
		return reportListMapper.deleteReport(reportId);
	}
}
