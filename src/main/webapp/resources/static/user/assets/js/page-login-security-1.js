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

	//현재 비밀번호 수정 입력 pocus 시 password off
	$('#loginSecurityUpdateNowPwd').focus(function() {
		$(this).attr('type', 'text');
	});

	//현재 비밀번호 수정 입력 blur 시 password on
	$('#loginSecurityUpdateNowPwd').blur(function() {
		$(this).attr('type', 'password');
	});

	//변경할 비밀번호 입력 pocus 시 password off
	$('#loginSecurityUpdateNewPwd').focus(function() {
		$(this).attr('type', 'text');
	});

	//변경할 비밀번호 입력 blur 시 password on
	$('#loginSecurityUpdateNewPwd').blur(function() {
		$(this).attr('type', 'password');
	});

	//변경할 비밀번호 재입력 pocus 시 password off
	$('#loginSecurityUpdateCheckNewPwd').focus(function() {
		$(this).attr('type', 'text');
	});

	//변경할 비밀번호 재입력 blur 시 password on
	$('#loginSecurityUpdateCheckNewPwd').blur(function() {
		$(this).attr('type', 'password');
	});

	//비밀번호 수정완료 : update review
	$('#loginSecurityUpdatePwdBtn').on('click', function() {
		if ($('#loginSecurityUpdateNowPwd').val() == "") {
			alert('현재 비밀번호 입력을 완료해주세요.');
			return false;
		}

		//true일 시 비밀번호와 비밀번호 확인 매칭 함수 실행
		if (!(mathPwAndRePw($('#loginSecurityNowPwd').val(), $('#loginSecurityUpdateNowPwd').val()))) {
			console.log('현재 비밀번호' + $('#loginSecurityNowPwd').val());
			console.log('현재 비밀번호 확인' + $('#loginSecurityUpdateNowPwd').val());
			alert('현재 비밀번호가 일치하지 않습니다.');
			return false;
		}

		//현재 비밀번호 유효성 함수 실행
		if ((chkPW($('#loginSecurityUpdateNowPwd').val())) < 3) {
			if ((chkPW($('#loginSecurityUpdateNowPwd').val())) == 0) {
				alert("비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
				return false;
			} else if ((chkPW($('#loginSecurityUpdateNowPwd').val())) == 1) {
				alert("비밀번호는 공백 없이 입력해주세요.");
				return false;
			} else if ((chkPW($('#loginSecurityUpdateNowPwd').val())) == 2) {
				alert("비밀번호는 영문,숫자, 특수문자를 혼합하여 입력해주세요.");
				return false;
			}
		}

		if ($('#loginSecurityUpdateNewPwd').val() == "") {
			alert('새 비밀번호 입력을 완료해주세요.');
			return false;
		}

		//새 비밀번호 유효성 함수 실행
		if ((chkPW($('#loginSecurityUpdateNewPwd').val())) < 3) {
			if ((chkPW($('#loginSecurityUpdateNewPwd').val())) == 0) {
				alert("새 비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
				return false;
			} else if ((chkPW($('#loginSecurityUpdateNewPwd').val())) == 1) {
				alert("새 비밀번호는 공백 없이 입력해주세요.");
				return false;
			} else if ((chkPW($('#loginSecurityUpdateNewPwd').val())) == 2) {
				alert("새 비밀번호는 영문,숫자, 특수문자를 혼합하여 입력해주세요.");
				return false;
			}
		}

		if ($('#loginSecurityUpdateCheckNewPwd').val() == "") {
			alert('새 비밀번호 재입력을 완료해주세요.');
			return false;
		}

		//true일 시 새 비밀번호와 새 비밀번호 확인 매칭 함수 실행
		if (!(mathPwAndRePw($('#loginSecurityUpdateNewPwd').val(), $('#loginSecurityUpdateCheckNewPwd').val()))) {
			console.log('바꾸려는 비밀번호 위에' + $('#loginSecurityUpdateNewPwd').val());
			console.log('바꾸려는 비밀번호 아래' + $('#loginSecurityUpdateCheckNewPwd').val());
			alert('새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.');
			return false;
		}

		if ($('#loginSecurityUpdateNewPwd').val() != $('#loginSecurityNowPwd').val()) {
			$('#loginSecurityNowPwd').val($('#loginSecurityUpdateNewPwd').val());
		}

		if (confirm('비밀번호 수정을 완료하시겠습니까?')) {
			alert('비밀번호 수정을 완료하였습니다.');
		}

		$(this).css('display', 'inline-block');
		$('#loginSecurityPwdUpdate').css('display', 'none');
		$('#loginSecurityPasswordBtn').css('display', 'inline-block');
		$('#loginSecurityNowPwdDiv').css('display', 'block');
		console.log($('#loginSecurityNowPwd').val());
	});

	//비밀번호 수정취소 : update review
	$('#loginSecurityCancelPwdBtn').on('click', function() {
		if (!confirm('비밀번호 수정을 취소하시겠습니까?')) {
			return false;
		}
		alert('비밀번호 수정을 취소하였습니다.');

		$(this).css('display', 'inline-block');
		$('#loginSecurityPwdUpdate').css('display', 'none');
		$('#loginSecurityPasswordBtn').css('display', 'inline-block');
		$('#loginSecurityNowPwdDiv').css('display', 'block');
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