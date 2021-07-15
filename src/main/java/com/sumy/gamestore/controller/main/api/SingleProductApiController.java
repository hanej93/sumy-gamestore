package com.sumy.gamestore.controller.main.api;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sumy.gamestore.dto.ResponseDto;
import com.sumy.gamestore.model.ReportList;
import com.sumy.gamestore.model.ReviewList;
import com.sumy.gamestore.service.ReportListService;
import com.sumy.gamestore.service.ReviewListService;

@RestController
public class SingleProductApiController {

	@Autowired
	ReviewListService reviewListService; 
	
	@Autowired
	ReportListService reportListService;
	
	@PutMapping("/sumy/game/review")
	public ResponseDto<Integer> updateReview(@RequestBody ReviewList reviewList){
		System.out.println(reviewList);
		ReviewList resultReview = reviewListService.리뷰검색(reviewList.getReviewId());
		resultReview.setReviewText(reviewList.getReviewText());
		resultReview.setReviewStarRating(reviewList.getReviewStarRating());
		resultReview.setReviewUpdateDate(LocalDateTime.now());
		
		reviewListService.리뷰수정(resultReview);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	
	
	@PostMapping("/sumy/game/review/report")
	public ResponseDto<Integer> sendReport(@RequestBody ReportList reportList){
		System.out.println(reportList);
		
		ReportList inputReport = ReportList.builder()
										   .reportId(0)
										   .reportFromUserId(reportList.getReportFromUserId())
										   .reviewId(reportList.getReviewId())
										   .reportText(reportList.getReportText())
										   .reportWriteDate(LocalDateTime.now())
										   .reportReadYn(0)
										   .build();
										   
		reportListService.댓글신고추가(inputReport);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}
