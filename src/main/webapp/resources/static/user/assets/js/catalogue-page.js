let catalogue = {

	init: function(){	
		$("#catalogueFilterResetBtn").on('click',()=> {
			this.clearFilter();
		});
		
		$("catalogueFilterApplyBtn").on('click',()=> {
			
		});
		
		$("#orderOpt").on('change',()=>{
			this.search();
		});
	},
	
	clearFilter:function(){
		$("h3:contains('별점')").next().children().addClass('g-color-primary click');
		$("h3:contains('별점')").next().children().last().removeClass('g-color-primary click');
		$.HSCore.components.HSSlider.init('#rangeSlider1');
	},
	
	search: function(){
				
		var url = "/catalogue";

		url = url + "?nowPage=" + 1;

		url = url + "&orderOpt=" + $('#orderOpt').val();
		
		/*url = url + "&lowPriceFilter=" + $('#lowPriceFilter').val();
		
		url = url + "&highPriceFilter=" + $('#highPriceFilter').val();
		
		url = url + "&starFilter=" + $('#starFilter').val();
		
		url = url + "&categoryListFilter=" + $('#categoryListFilter').val();*/

		location.href = url;
	
	}

}

catalogue.init();



