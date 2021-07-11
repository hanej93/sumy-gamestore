let newsList = {
	init: function(){
		$('#news-title-search-btn').on('click', ()=>{
			this.search();
		});

	},
	
	search: function(){
				
		var url = "/admin/news/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#news-title-search').val();

		location.href = url;
	
	}
}

newsList.init();



