/*-카카오페이 ajax 비동기 통신 부분-*/
$(function() {
	var wishList = [];
	var packWishlistIdArr = $('#mCSB_2 .tr_child .packWishlistId');
	var packGameIdArr = $('#mCSB_2 .tr_child .packGameId');
	var packGameTitleArr = $('#mCSB_2 .tr_child .packGameTitle');
	var packGamePriceArr = $('#mCSB_2 .tr_child .packGamePrice');
	
	for (let i = 0; i < packWishlistIdArr.length; i++) {
		wishList.push(
		{
			packWishlistId: packWishlistIdArr[i].value,
			packGameId: packGameIdArr[i].value,
			packGameTitle: packGameTitleArr[i].value,
			packGamePrice: Math.floor(packGamePriceArr[i].value)
		});
	}
	/*
	$('input[name="fruit"]:checked').each(function(i){//위시 리스트 저장
		fruitArray.push($(this).val());
	});*/
	console.log(packWishlistIdArr);
	console.log(packGameIdArr);
	console.log(packGameTitleArr);
	console.log(packGamePriceArr);
	
	

	$('#kakaoPayApiBtn').click(function() {
		//데이터 준비
		//wishlistId, gameId, gameTitle, gamePrice userId, userEmail, userProvider, userToken, userName
		//totalAmount//결제할 총 금액
		$.ajax({
			type:"POST", 
			url: '/user/kakaoPayApi',
			data:JSON.stringify(wishList),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" ,
			success: function(result) {
				alert("성공 : "+result.tid);
				/*
				tid	String	결제 고유 번호, 20자
				next_redirect_app_url	String	요청한 클라이언트(Client)가 모바일 앱일 경우
				카카오톡 결제 페이지 Redirect URL
				next_redirect_mobile_url	String	요청한 클라이언트가 모바일 웹일 경우
				카카오톡 결제 페이지 Redirect URL
				next_redirect_pc_url	String	요청한 클라이언트가 PC 웹일 경우
				카카오톡으로 결제 요청 메시지(TMS)를 보내기 위한 사용자 정보 입력 화면 Redirect URL
				android_app_scheme	String	카카오페이 결제 화면으로 이동하는 Android 앱 스킴(Scheme)
				ios_app_scheme	String	카카오페이 결제 화면으로 이동하는 iOS 앱 스킴
				created_at	Datetime	결제 준비 요청 시간*/
				var resultBox = result.next_redirect_pc_url;
				window.open(resultBox);
			},
			error: function(err) {
				alert("에러 : "+err);
			}
		})
	});
});