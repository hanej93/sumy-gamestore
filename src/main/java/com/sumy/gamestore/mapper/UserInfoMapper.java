package com.sumy.gamestore.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.model.UserInfo;

@Mapper
public interface UserInfoMapper {
	
	@Select("select * from user_info where user_email = ${userEmail}")
	public UserInfo findByUsername(String userEmail);

}
