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
	
	public UserInfo 유저수정(UserInfo userInfo) {
		
		int affectedRows = userInfoMapper.updateUser(userInfo);
		
		if(affectedRows == 1) {
			UserInfo updateUser =
					UserInfo.builder()
					.userProfileImage(userInfo.getUserProfileImage())
					.userName(userInfo.getUserName())
					.userNickname(userInfo.getUserNickname())
					.userEmail(userInfo.getUserEmail())
					.userWarningCount(userInfo.getUserWarningCount())
					.userBlacklist(userInfo.getUserBlacklist())
					.build();
			return updateUser;
					
		}else {
			return null;
		}
	}
	
	public int 유저삭제(int userId) {
		return userInfoMapper.deleteUser(userId);
	}
}
