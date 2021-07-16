package com.sumy.gamestore.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sumy.gamestore.mapper.QuestionUserMapper;
import com.sumy.gamestore.model.QuestionList;

@Service
public class QuestionUserService {
	
	@Autowired
	private QuestionUserMapper questionUserMapper;
	
	public QuestionList questionInsert(QuestionList question) {
		return questionUserMapper.insertQuestion(question);
	}

}
