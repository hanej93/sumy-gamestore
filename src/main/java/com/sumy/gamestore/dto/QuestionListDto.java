package com.sumy.gamestore.dto;

import java.time.LocalDateTime;
import java.util.List;

import com.sumy.gamestore.model.UserInfo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QuestionListDto {
	private int questionId;
	private int userId;
	private String questionTitle;
	private String questionText;
	private LocalDateTime questionWriteDate;
	private boolean questionAnswerYn;
	private boolean questionReadYn;
	private String questionImage1;
	private String questionImage2;
	private String questionImage3;
	
}
