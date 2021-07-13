package com.sumy.gamestore.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sumy.gamestore.dto.ReportReviewUserDto;
import com.sumy.gamestore.dto.ResponseDto;
import com.sumy.gamestore.model.ReportList;
import com.sumy.gamestore.model.UserInfo;
import com.sumy.gamestore.service.ReportListService;
import com.sumy.gamestore.service.UserInfoService;

@RestController
public class ReportListApiController {

	@Autowired
	ReportListService reportListService;
	
	@Autowired
	UserInfoService userInfoService;

	@PutMapping("/admin/report/readYn")
	public ResponseDto<Integer> updateReportReadYn(@RequestBody ReportList reportList) {
		System.out.println(reportList.getReportId());
		System.out.println(reportList.getReportReadYn());	
		
		ReportList resultReport = reportListService.신고검색(reportList.getReportId());
		resultReport.setReportReadYn(reportList.getReportReadYn());
		// 신고수정
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	
	
	@PutMapping("/admin/report/memo")
	public ResponseDto<Integer> showMemo(@RequestBody ReportReviewUserDto reportReviewUserDto) {
		System.out.println(reportReviewUserDto.getToUserId());
		System.out.println(reportReviewUserDto.getToUserWarningCount());
		
		UserInfo resultUser =  userInfoService.유저검색(reportReviewUserDto.getToUserId());
		resultUser.setUserWarningCount(reportReviewUserDto.getToUserWarningCount());
		
		userInfoService.유저수정(resultUser);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@DeleteMapping("/admin/report/list")
	public ResponseDto<Integer> deleteGame(@RequestBody ReportList reportList) {
		System.out.println(reportList.getReportId());
		int result = reportListService.신고삭제(reportList.getReportId());
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), result);
	}
	
	
	
}
