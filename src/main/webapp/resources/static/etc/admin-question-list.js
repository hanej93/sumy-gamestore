let questionList = {
	init: function(){
		$('#question-nickname-search-btn').on('click', ()=>{
			this.search();
		});

	},
	
	search: function(){
				
		var url = "/admin/question/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#question-nickname-search').val();

		location.href = url;
	
	}
}

questionList.init();



