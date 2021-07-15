package com.sumy.gamestore.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.mapper.JoinedUserMapper;
import com.sumy.gamestore.mapper.LoginUserMapper;
import com.sumy.gamestore.mapper.NewsListMapper;
import com.sumy.gamestore.mapper.UserInfoMapper;
import com.sumy.gamestore.model.NewsList;
import com.sumy.gamestore.model.UserInfo;

@Service
public class MyPageService {

	@Autowired
	private UserInfoMapper userInfoMapper;
	
	public UserInfo findByUsername(String username) {
		System.out.println(username);
//		System.out.println(username.getUserEmail());
//		UserInfo user = userInfoMapper.selectUserByEmail(userInfo.getUserEmail());
//		System.out.println("3번째 친구 : "+user);
		return null;
	}
	
}
