/*-카카오페이 ajax 비동기 통신 부분-*/

$(function() {
	var total;
	if($('#wishTotalPriceAfter1').html().replace(/,/g, '')<=0){
		total = "1";
	}

	//결제 api 호출
	$('#kakaoPayApiBtn').click(function() {
		$.ajax({
			type: "POST",
			url: '/user/kakaoPayApi',
			data: total,
			contentType: "application/json;charset=utf-8",
			dataType: "json",
			success: function(result) {
				if(result=="free"){
					free();
				}
				var resultBox = result.next_redirect_pc_url;
				window.open(resultBox);
				/*successPost();//결제 완료 컨트롤러로 넘겨주는 애*/
			},
			error: function(err) {
				console.log("err"+err);
			}
		})
	});
});