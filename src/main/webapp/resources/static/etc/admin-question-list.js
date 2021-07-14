let questionList = {
	init: function(){
		$('#question-title-search-btn').on('click', ()=>{
			this.search();
		});

		$('#readerYn-select').on('change', ()=>{
			this.search();
		});
		
		$('#answerYn-select').on('change', ()=>{
			this.search();
		});
		
		
		// 읽음 상태 변경
		$("[id^='readerYn-checkbox']").on('change',function(){
			let checkBox =$(this);
			questionList.reader(checkBox);
		});
		
		
		// 답변 상태 변경
		$("[id^='answerYn-checkbox']").on('change',function(){
			let checkBox =$(this);
			questionList.answer(checkBox);
		});
		
		
		// 모달이 켜졌을 때 읽음 상태로 변경
		$("[id^='exampleModal1']").on('shown.bs.modal', function () {
			let questionId = $(this).attr("questionId");
			questionList.updateReadYes(questionId); 
		});
		
		// 모달이 꺼졌을 때 페이지 리로드
		$("[id^='exampleModal1']").on('hidden.bs.modal', function () {
			location.reload();
		});
		
	},
	
	search: function(){
				
		var url = "/admin/question/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#question-title-search').val();
		
		url = url + "&answerYn=" + $('#answerYn-select').val();

		url = url + "&readerYn=" + $('#readerYn-select').val();
		
		location.href = url;
	
	},
	
	answer: function(checkBox) {
		console.log(checkBox.prop('checked'));
		var questionAnswerReader = 0;
		if(checkBox.prop('checked')){
			questionAnswerReader = 1;
		}
		
		
		let data = {
			questionAnswerYn:questionAnswerReader,
			questionId:checkBox.attr("questionId")
		};
		
		$.ajax({
			type:"PUT",
			url:"/admin/question/answer",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			console.log(resp);
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
		
	},
	
	reader: function(checkBox) {
		console.log(checkBox.prop('checked'));
		var questionAnswerReader = 0;
		if(checkBox.prop('checked')){
			questionAnswerReader = 1;
		}
		
		
		let data = {
			questionReadYn:questionAnswerReader,
			questionId:checkBox.attr("questionId")
		};
		
		$.ajax({
			type:"PUT",
			url:"/admin/question/reader",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			console.log(resp);
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
		
	},
	
	// 읽음상태로 변경	
	updateReadYes: function(questionId) {
		
		let data = {
			questionId:questionId,
			questionReadYn:1
		}
		
		$.ajax({
			type:"PUT",
			url:"/admin/question/reader",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			console.log(resp);
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
	}
	
}

questionList.init();



