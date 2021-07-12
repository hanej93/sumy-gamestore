let reportList = {
	init: function(){
		$('#report-nickname-search-btn').on('click', ()=>{
			this.search();
		});

	},
	
	search: function(){
				
		var url = "/admin/report/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#report-nickname-search').val();

		location.href = url;
	
	}
}

reportList.init();



