package com.sumy.gamestore.model;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QuestionList {
	private int questionId;
	private int userId;
	private LocalDateTime questionTitle;
	private boolean questionAnswerYn;
	private boolean questionReadYn;
	private String questionImage1;
	private String questionImage2;
	private String questionImage3;
}
