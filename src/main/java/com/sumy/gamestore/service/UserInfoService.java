package com.sumy.gamestore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.UserInfoMapper;
import com.sumy.gamestore.model.UserInfo;

@Service
public class UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;
	
	// 총 유저 갯수 조회
	public int 유저총개수(PagingVO vo) {
		return userInfoMapper.countUserList(vo);
	}
	
	// 한 페이지 유저 리스트 조회
	public List<UserInfo> 한페이지유저리스트(PagingVO vo){
		return userInfoMapper.selectUserInfo(vo);
	}
	
	public UserInfo 유저검색(int userId) {
		UserInfo userInfo = userInfoMapper.selectOneByUserId(userId);
		return userInfo;
	}
	
	public int 유저수정(UserInfo userInfo) {
		return userInfoMapper.updateUser(userInfo);
	}
	
	public int 유저삭제(int userId) {
		// 1. 리뷰리스트를 게임 아이디로 조회해서 해당 리뷰아이디를 List<> 로 받아옴
		// List<Integer> deleteReviewIdList = 1번의 결과;
		List<Integer> deleteReviewIdList = userInfoMapper.reviewIdList(userId);
		
		// 2. 받아온 리스트에 해당 되는 리뷰 아이디를 반복해서 제거
		for(int reviewId : deleteReviewIdList){
			userInfoMapper.deleteReportList(reviewId);
		}
		
		
		userInfoMapper.deletePurchasedGameList(userId);
		userInfoMapper.deleteQuestionList(userId);
		
		userInfoMapper.deleteReview(userId);
		userInfoMapper.deleteWishListGame(userId);
		
		return userInfoMapper.deleteUser(userId);
	}
}
