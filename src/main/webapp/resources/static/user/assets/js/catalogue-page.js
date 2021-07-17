let catalogue = {

	init: function(){	
		$("#catalogueFilterResetBtn").on('click',()=> {
			this.clearFilter();
		});
		
		$("#catalogueFilterApplyBtn").on('click',()=> {
			this.search();
		});
		
		$("#orderOpt").on('change',()=>{
			this.search();
		});
	},
	
	clearFilter:function(){
		$("h3:contains('별점')").next().children().addClass('g-color-primary click');
		$("h3:contains('별점')").next().children().last().removeClass('g-color-primary click');
		$("#starFilter").children().removeClass('g-color-primary');
		
		$.HSCore.components.HSSlider.init('#rangeSlider1');
	},
	
	search: function(){
		
		let text = $("#rangeSliderAmount3").text();
				
		var url = "/catalogue";

		url = url + "?nowPage=" + 1;

		url = url + "&orderOpt=" + $('#orderOpt').val();
		
		url = url + "&lowPriceFilter=" + text.substring(0, text.indexOf(' '));
		
		url = url + "&highPriceFilter=" + text.substring(text.indexOf(' ') + 3);
		
		url = url + "&starFilter=" + $("#starFilter").children('.g-color-primary').length;
		
		$('input[name=categoryListFilter]:checked').each(function(){
			console.log($(this).val());
			url = url + "&categoryListFilter=" + $(this).val();
		});

		location.href = url;
	
	}

}

catalogue.init();



