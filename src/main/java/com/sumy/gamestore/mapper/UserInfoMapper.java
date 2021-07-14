package com.sumy.gamestore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sumy.gamestore.dto.PagingVO;
import com.sumy.gamestore.model.UserInfo;

@Mapper
public interface UserInfoMapper {
	
	@Select("select * from user_info where user_name = #{user_name}")
	public UserInfo findByUsername(String username);
	
	@Select("select * from user_info where user_id = #{userId}")
	public UserInfo selectOneByUserId(int userId);
	
	@Update("update user_info set user_profile_image =#{userProfileImage}, user_name =#{userName},"
			+ "user_nickname =#{userNickname}, user_email =#{userEmail}, user_warning_count =#{userWarningCount},"
			+ "user_blacklist =#{userBlacklist} where user_id = #{userId}")
	public int updateUser(UserInfo userInfo);
	
	@Delete("delete from user_info where user_id = #{userId}")
	public int deleteUser(int userId);

	// ================================================
	
//	@Select("select count(*) from user_info")
	public int countUserList(PagingVO vo);

//	@Select("select * from user_info order by user_id desc limit #{start}, #{cntPage}")
	public List<UserInfo> selectUserInfo(PagingVO vo);
}
