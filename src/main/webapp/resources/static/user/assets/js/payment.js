/*-카카오페이 ajax 비동기 통신 부분-*/
$(function() {
	var wishArr = [];
	var packWishlistIdArr = $('#mCSB_2 .tr_child .packWishlistId');
	var packGameIdArr = $('#mCSB_2 .tr_child .packGameId');
	var packGameTitleArr = $('#mCSB_2 .tr_child .packGameTitle');
	var packGamePriceArr = $('#mCSB_2 .tr_child .packGamePrice');
	
	const obj = {
		id: 123,
		product: {
			type: 'book',
			page: 200,
			title: 'Javascript',
			tags: ['JS', 'Beginner']
		}
	};

	const json = JSON.stringify(obj);
	for (let i = 0; i < packWishlistIdArr.length; i++) {
		wishArr[i] =
		{
			packWishlistId: packWishlistIdArr[i].value,
			packGameId: packGameIdArr[i].value,
			packGameTitle: packGameTitleArr[i].value,
			packGamePrice: packGamePriceArr[i].value
		}
	}
	console.log(wishArr);
	var jsonArr = JSON.stringify(wishArr);
	alert(jsonArr);
	var jsonData = JSON.parse(jsonArr);

	$('#kakaoPayApiBtn').click(function() {
		//데이터 준비
		//wishlistId, gameId, gameTitle, gamePrice userId, userEmail, userProvider, userToken, userName
		//totalAmount//결제할 총 금액
		$.ajax({
			url: 'user/kakaoPayApi',
			data: jsonData,
			dataType: json,
			success: function(result) {
				alert(result.tid);
			},
			error: function(data) {
				alert(data);
			}
		})
	});
});