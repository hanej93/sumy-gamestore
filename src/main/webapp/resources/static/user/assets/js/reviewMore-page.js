
/*** 
 **
 *
 
	page-single-product-1.html(게임 상세 화면) custom script
	작성자 : 김명주
	작성일 : 2021-07-01

***
**
*/


$(document).on('ready', function() {
	//리뷰 수정하기 : p, textarea toggle
	$('.reviewUpdateBtn').on('click', function() {
		//리뷰 수정 전 p값 가져와서 input에 넣기.
		$('.reviewUpdateInput').val($(this).parents($('.media-body')).children('p').html().trim());
		$(this).parents().children($('.media-body')).children('p').css('display', 'none');
		$(this).parents().children($('.media-body')).children('form[name=reviewForm]').css('display', 'block');
	});

	//리뷰 취소
	$('.reviewFormReset').on('click', function() {
		if (!confirm('작성중인 리뷰를 나가시겠습니까?')) {
			return false;
		}
		$(this).parents().children($('.media-body')).children('p').css('display', 'block');
		$(this).parents().children($('.media-body')).children('form[name=reviewForm]').css('display', 'none');
	});

	//리뷰 수정완료 : update review
	$('.reviewFormComplete').on('click', function() {
		if ($(this).parent().parent().parent().children().first().children($('#reviewUpdateInput')).val() == "") {
			console.log("dd2");
			alert("수정할 리뷰 내용이 없습니다.");
			return false;
		}
		if (!confirm('리뷰 수정을 완료하시겠습니까?')) {
			return false;
		}
		$(this).parents().children($('.media-body')).children('p').css('display', 'block');
		$(this).parents().children($('.media-body')).children('form[name=reviewForm]').css('display', 'none');
		
		let reviewId = $(this).attr('reviewId');
		let updateWriteTextStr = "#updateWriteText" + reviewId;
		let updateWriteStarStr = "#updateWriteStar" + reviewId;
		console.log(reviewId);
		console.log($(updateWriteTextStr).val());
		console.log($(updateWriteStarStr).children('.g-color-primary').length);

		let data = {
			reviewId:reviewId,
			reviewText:$(updateWriteTextStr).val(),
			reviewStarRating:$(updateWriteStarStr).children('.g-color-primary').length
		};
		
		$.ajax({
			type:"PUT",
			url:"/sumy/game/review",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			//alert('리뷰 수정을 완료하였습니다.');
			location.reload();
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
		
	});

	//리뷰 삭제하기 : delete review
	$('.reviewDeleteBtn').on('click', function() {
		if (!confirm('리뷰를 삭제하시겠습니까?')) {
			return false;
		}
		alert('리뷰를 삭제를 완료하였습니다.');
	});


	//리뷰 신고하기 : declaration(width declarationModal)
	$("[id^='declarationBtn']").on('click', function() {
		let reviewId = $(this).attr("reviewId");
		let declarationNameStr = "#declarationName" + reviewId;
		let declarationTextStr = "#declarationText" + reviewId;
		
		if ($(declarationTextStr).val() == "") {
			alert('신고할 내용을 작성해주세요.');
			return false;
		}

		if (!confirm("'" + declarationNameStr + "' 님을 신고하시겠습니까?")) {
			return false;
		}
		let data = {
			reviewId:reviewId,
			reportFromUserId:$(this).attr("principalUserId"),
			reportText:$(declarationTextStr).children('.g-color-primary').length
		};
		
		$.ajax({
			type:"POST",
			url:"/sumy/game/review/report",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			alert('신고가 완료되었습니다.');
			$("[id^='declarationModal']").modal('hide');
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
		
		
	});

	// 자세히보기 인덱스1
	$("#detailsBtn").on("click", () => {
		$("#details").toggleClass("line--clamp");
		$('#detailsBtn').text($('#detailsBtn').text() == '자세히 보기' ? '간략히 보기' : '자세히 보기');
	});

});



/*** 
 **
 *
 
	reviewMore-page.html(리뷰 상세 화면) custom script
	작성자 : 김명주
	작성일 : 2021-07-01

***
**
*/


$(document).on('ready', function() {
	//리뷰 작성하기
	//DB연동 가능해 질 때, 구매 고객이 인입하게 되었을때 이것 삭제하기.
	$('form[name=reviewInsertForm]').css('display', 'block');

	$('#reviewUpdateCompleteBtn').on('click', function() {
		if ($('#riviewInsertTestarea').val() == "") {
			alert('리뷰를 입력해주세요.');
			return false;
		}
		if (!confirm('리뷰 작성을 완료하시겠습니까?')) {
			return false;
		}
		alert('리뷰 작성을 완료하였습니다.');
		$(this).parents().children('form[name=reviewInsertForm]').css('display', 'none');
	});
});