/*** 
 **
 *
	작성자 : 김명주
	작성일 : 2021-07-01

***
**
*/

//1. 이메일 정규식 매칭 함수
//   사용처 - page-signup-1.html(회원가입), page-login-1.html(로그인)
function email_check(email) {
	var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return (email != '' && email != 'undefined' && regex.test(email));//210704 없애고 테스트해보기
}

//2. error클래스 활성화
//   사용처 - page-signup-1.html(회원가입), page-login-1.html(로그인)
function addError(input) {
	input.focus();
	input.parent().parent().addClass('u-has-error-v1');
	input.parent().parent().children('small').css('display', 'block');
}

//3. success클래스 활성화
//   사용처 - page-signup-1.html(회원가입), page-login-1.html(로그인)
function addSuccess(input) {
	input.focus();
	input.parent().parent().addClass('u-has-success-v1-1');
	input.parent().parent().children('small').css('display', 'block');
}

//4. error, success 클래스 초기화
//   사용처 - page-signup-1.html(회원가입), page-login-1.html(로그인)
function removeErrorAndSuccess(input) {
	if (input.parent().parent().is(".u-has-error-v1")) {
		input.parent().parent().removeClass('u-has-error-v1'); input.parent().parent().children('small').css('display', 'none');
	} else if (input.parent().parent().is(".u-has-success-v1-1")) {
		input.parent().parent().removeClass('u-has-success-v1-1'); input.parent().parent().children('small').css('display', 'none');
	}
}

/*** 
 **
 *
 
	page-password-recovery-1(비밀번호 찾기) custom script
	작성자 : 김명주
	작성일 : 2021-07-15

***
**
*/

$(document).ready(function() {
	var emailCode;//이메일로 받은 인증번호 전역변수

	//이메일 인증번호 전송 버튼
	$('#emailCertificationSendBtn').on('click', function() {
		//이메일 형식이 아닐 시 에러문구 띄우기
		if (!(email_check($('#userEmail').val()))) {
			addError($('#userEmail')); $('#userEmail').parent().parent().children('small').html('올바른 이메일 형식이 아닙니다. 다시 입력해주세요.');
			return false;
		}
		//이메일 인증번호 보내는 시간이 너무 길어서 문구 띄워주기
		removeErrorAndSuccess($('#userEmail'));
		addSuccess($('#userEmail'));
		$('#userEmail').parent().parent().children('small').html('이메일을 보내고 있습니다. 잠시만 기다려주세요..');
		$.ajax({
			type: "GET",
			url: "checkMail?mail=" + $('#userEmail').val(),
			error: function(error) {
				alert("이메일을 확인해주세요.");
				return false;
			},

			success: function(result) {
				alert("인증 이메일을 전송했습니다.");
				emailCode = result;//인증코드 담는 변수
				console.log(emailCode);
				//인증번호 두 번째 입력 시 value 초기화
				$('#emailCertificationInput').val('');
				//이메일 유효성 통과했을 시 error클래스 있다면 삭제
				removeErrorAndSuccess($('#userEmail'));
				addSuccess($('#userEmail'));
				$('#userEmail').parent().parent().children('small').html('해당 이메일로 전송된 인증번호를 입력해주세요.');
				$('#userEmail').attr('readonly', true);
				$('#emailReBox').css('display', 'block');
				$('#emailCertificationSendBtn').text('재인증');
				$('#emailCertificationNumInput').css('display', 'block');
			}
		});
	});

	//메일주소 재입력 버튼 클릭할 때
	$('#emailReBtn').on('click', function() {
		//success 클래스 활성화 되있을 시 비활성화
		removeErrorAndSuccess($('#userEmail'));

		//이메일 인풋이 readonly상태일 때 메일주소 변경 버튼
		if ($('#userEmail').attr('readonly', true)) {
			$('#emailCertificationSendBox').css('display', 'block');
			$('#emailReBox').css('display', 'none');
			$('#userEmail').attr('readonly', false);
			$('#emailCertificationSendBtn').text('인증');
			$('#emailCertificationNumInput').css('display', 'none');
		}
	});

	//이메일 인증번호 확인 버튼
	$('#emailCertificationSubmitBtn').on('click', function() {
		removeErrorAndSuccess($('#userEmail'));
		//이메일 인증번호 입력 value가 비어있다면 false
		if ($('#emailCertificationInput').val() == "") {
			removeErrorAndSuccess($('#emailCertificationInput'));
			addError($('#emailCertificationInput'));
			$('#emailCertificationInput').parent().parent().children('small').html('이메일로 받은 인증번호를 입력해주세요.');
			return false;
		}
		if($('#emailCertificationInput').val() != emailCode){
			removeErrorAndSuccess($('#emailCertificationInput'));
			addError($('#emailCertificationInput'));
			$('#emailCertificationInput').parent().parent().children('small').html('인증번호와 일치하지 않습니다.');
			return false;
		}
		removeErrorAndSuccess($('#emailCertificationInput'));
		addSuccess($('#userEmail'));
		$('#userEmail').parent().parent().children('small').html('이메일 인증이 완료되었습니다.');
		$('#emailReBox').css('display', 'none');
		$('#emailCertificationNumInput').css('display', 'none');
		$('#emailCertificationSendBox').css('display', 'none');
		$('#emailReBox').css('display', 'block');
	});
});