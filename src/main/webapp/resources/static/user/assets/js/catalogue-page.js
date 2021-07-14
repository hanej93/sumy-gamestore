/*** 
 **
 *
 
	header fixed height custom script
	제목 : 헤더 fixed만큼 본문 마진주기
	작성자 : 김명주
	작성일 : 2021-07-05

***
**
*/


$(document).on('ready', function() {
	$('main').css('padding-top', '80px');
});


/*** 
 **
 *
 
	catalogue-page.html(카탈로그 화면) custom script
	제목 : 필터인덱스2
	작성자 : 한의진
	작성일 : 2021-06-25
	기능: 필터 초기화 이벤트
	설명:
	1. 초기화 버튼을 눌렀을 때 별 4개로 초기화
	2. 가격 20000 - 40000으로 초기화

***
**
*/



$(document).on('ready', function() {
	$("#catalogueFilterResetBtn").click(function() {
		$("h3:contains('별점')").next().children().addClass('g-color-primary click');
		$("h3:contains('별점')").next().children().last().removeClass('g-color-primary click');
		var slider = $("h3:contains('가격')").next().children();
		$("#rangeSliderAmount3").text("20000 - 40000");
	});

});



