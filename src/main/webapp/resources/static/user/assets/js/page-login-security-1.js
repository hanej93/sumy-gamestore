/*** 
 **
 *
 
	공용 custom function
	작성자 : 김명주
	작성일 : 2021-07-01

***
**
*/
//11. string 을 받으면 value를 정규식으로 체크해서 다시 박는 함수
//   사용처 - page-login-security-1.html(회원정보수정), page-signup-1.html(회원가입)
function regixPhone(string) {
	var patternPhone = /01[016789][^0][0-9]{2,3}[0-9]{3,4}/;
	console.log(string);
	if (!patternPhone.test(string)) {
		return false;
	}
	testPhone = string.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, "$1-$2-$3");

	return testPhone;
}

/*** 
 **
 *
 
	page-login-security-1.html(회원정보 수정 화면) custom script
	작성자 : 김명주
	작성일 : 2021-07-05

***
**
*/


$(document).on('ready', function() {

	//이름 수정 버튼
	$('#loginSecurityNameBtn').on('click', function() {
		$(this).css('display', 'none');
		$('form[name=nickNameForm]').css('display', 'block');
		$('#loginSecurityStarName').css('display', 'none');
		$('#loginSecurityNickNameTextArea').val($('#loginSecurityStarName').text());
	});

	//이름 수정완료 : update review
	$('#loginSecurityUpdateBtn').on('click', function() {
		if ($('#loginSecurityNickNameTextArea').val() == "") {

			alert('별명 수정을 완료해주세요.');
			return false;
		}

		if (!confirm('별명 수정을 완료하시겠습니까?')) {
			return false;
		}

		var queryString = $("form[name=nickNameForm]").serialize();
		console.log("쿼리스트링" + queryString);

		$.ajax({
			type: 'post',
			url: '/user/profileNickNameUpdate',
			data: queryString,
			dataType: 'json',
			error: function(xhr, status, error) {
				alert(error);
			},
			success: function(json) {
				console.log("닉네임 변경 성공");
			}
		});
		alert('별명 수정을 완료하였습니다.');

		$(this).css('display', 'inline-block');
		$('form[name=nickNameForm]').css('display', 'none');
		$('#loginSecurityStarName').css('display', 'block');
		$('#loginSecurityNameBtn').css('display', 'inline-block');
		$('#loginSecurityStarName').text($('#loginSecurityNickNameTextArea').val());
	});

	//이름 수정취소 : update review
	$('#loginSecurityCancelBtn').on('click', function() {
		$(this).css('display', 'inline-block');
		$('form[name=nickNameForm]').css('display', 'none');

		if (!confirm('별명 수정을 취소하시겠습니까?')) {
			return false;
		}
		alert('별명 수정을 취소하였습니다.');

		$('#loginSecurityStarName').css('display', 'block');
		$('#loginSecurityNameBtn').css('display', 'inline-block');
	});

	//비밀번호 수정 버튼
	$('#loginSecurityPasswordBtn').on('click', function() {
		$('#loginSecurityPwdUpdate').css('display', 'block');
		$('#loginSecurityPasswordBtn').css('display', 'none');
		$('#loginSecurityNowPwdDiv').css('display', 'none');
	});

	//주소 수정 버튼
	$('#loginSecurityAddressBtn').on('click', function() {
		$('#loginSecurityAddressUpdate01').val($('#loginSecurityAddressNow01').text());
		$('#loginSecurityAddressUpdate02').val($('#loginSecurityAddressNow02').text());
		$('#loginSecurityAddressUpdate03').val($('#loginSecurityAddressNow03').text());
		$('#loginSecurityAddressDiv').css('display', 'none');
		$('#loginSecurityAddressBlock').css('display', 'block');
		$('#loginSecurityAddressBtn').css('display', 'none');
	});

	//주소 수정 완료 : update review
	$('#loginSecurityUpdateAddressBtn').on('click', function() {
		if ($('#loginSecurityAddressUpdate01').val() == "") {
			alert('우편번호 수정을 완료해주세요.');
			return false;
		}
		if ($('#loginSecurityAddressUpdate02').val() == "") {
			alert('주소 수정을 완료해주세요.');
			return false;
		}
		if ($('#loginSecurityAddressUpdate03').val() == "") {
			alert('상세주소 수정을 완료해주세요.');
			return false;
		}
		if (!confirm('주소 수정을 완료하시겠습니까?')) {
			return false;
		}


		var queryString = $("form[name=addressForm]").serialize();
		console.log("쿼리스트링" + queryString);

		$.ajax({
			type: 'post',
			url: '/user/profileAddressUpdate',
			data: queryString,
			dataType: 'json',
			error: function(xhr, status, error) {
				alert(error);
			},
			success: function(json) {
				console.log("주소 수정 성공");
			}
		});
		alert('주소 수정을 완료하였습니다.');

		$('#loginSecurityAddressNow01').text($('#loginSecurityAddressUpdate01').val());
		$('#loginSecurityAddressNow02').text($('#loginSecurityAddressUpdate02').val());
		$('#loginSecurityAddressNow03').text($('#loginSecurityAddressUpdate03').val());

		$(this).css('display', 'inline-block');
		$('#loginSecurityAddressBlock').css('display', 'none');
		$('#loginSecurityAddressDiv').css('display', 'block');
		$('#loginSecurityAddressBtn').css('display', 'inline-block');
	});

	//주소 수정 취소 : update review
	$('#loginSecurityCancelAddressBtn').on('click', function() {
		if (!confirm('주소 수정을 취소하시겠습니까?')) {
			return false;
		}
		alert('주소 수정을 취소하였습니다.');

		$(this).css('display', 'inline-block');
		$('#loginSecurityAddressBlock').css('display', 'none');
		$('#loginSecurityAddressDiv').css('display', 'block');
		$('#loginSecurityAddressBtn').css('display', 'inline-block');
	});


	//핸드폰 번호 수정 버튼
	$('#loginSecurityNumberBtn').on('click', function() {
		$('#loginSecurityNumberForm').css('display', 'block');
		$('#loginSecurityNumberBtn').css('display', 'none');
		$('#loginSecurityNumber').css('display', 'none');
	});

	//핸드폰 번호 수정 완료 : update review
	$('#loginSecurityUpdateNumberBtn').on('click', function() {
		if ((regixPhone($('#loginSecurityNumberUpdate').val())) == false) {
			alert('핸드폰 번호를 확인 해주세요');
			return false;
		}
		if (!confirm('핸드폰 번호 수정을 완료하시겠습니까?')) {
			return false;
		}
		$('#loginSecurityNumberUpdate').val(regixPhone($('#loginSecurityNumberUpdate').val()));
		alert('핸드폰 번호 수정을 완료하였습니다.');
		$('#loginSecurityNumber').text($('#loginSecurityNumberUpdate').val());
		$(this).css('display', 'inline-block');
		$('#loginSecurityNumberForm').css('display', 'none');
		$('#loginSecurityNumberBtn').css('display', 'inline-block');
		$('#loginSecurityNumber').css('display', 'block');
	});

	//핸드폰 번호 수정 취소 : update review
	$('#loginSecurityCancelNumberBtn').on('click', function() {
		$(this).css('display', 'inline-block');

		if (!confirm('핸드폰 번호 수정을 취소하시겠습니까?')) {
			return false;
		}
		alert('핸드폰 번호 수정을 취소하였습니다.');

		$('#loginSecurityNumberForm').css('display', 'none');
		$('#loginSecurityNumberBtn').css('display', 'inline-block');
		$('#loginSecurityNumber').css('display', 'block');
	});

});