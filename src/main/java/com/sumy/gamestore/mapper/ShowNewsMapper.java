package com.sumy.gamestore.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.sumy.gamestore.model.NewsList;
@Mapper
public interface ShowNewsMapper {
	
	@Select("select news_id, news_title, news_sub_title, "
			+ "news_thumb_image, news_write_date, news_update_date "
			+ "from news_list order by news_id desc limit 3")
	public NewsList selectNewsByNewsId();
}

