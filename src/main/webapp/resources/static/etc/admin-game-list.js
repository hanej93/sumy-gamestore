let gameList = {
	init: function(){
		$('#game-title-search-btn').on('click', ()=>{
			this.search();
		});

	},
	
	search: function(){
				
		var url = "/admin/game/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#game-title-search').val();

		location.href = url;
	
	}
}

gameList.init();



