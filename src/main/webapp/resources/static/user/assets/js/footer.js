/*** 
 **
 *
 
	page-help-1.html(문의하기 폼) custom script
	작성자 : 김명주
	작성일 : 2021-07-01

***
**
*/

$(document).on('ready', function() {

	//문의하기 버튼
	$('#questionForSumyBtn').on('click', function() {
		if ($('#questionForSumyModalTitle').val() == "") {
			alert('문의할 내용의 제목을 입력해주세요.');
			return false;
		}

		if ($('#questionForSumyModalContents').val() == "") {
			alert('문의할 내용을 입력해주세요.');
			return false;
		}

		if (!confirm('문의하기를 완료하시겠습니까?')) {
			return false;
		}
		alert('문의하기를 완료하였습니다.');
	});
});

// 이미지 미리보기 custom script
// 작성자 : 김명주
// 작성일 : 2021-07-01

$(document).ready(function() {
	var targetUrl;
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
			reader.onload = function(e) {
				//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
				targetUrl = e.target.result;
				$('#blah').attr('src', targetUrl);
				//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
				// $('#imgInp').parent().children('label').text(targetUrl);
			}
			reader.readAsDataURL(input.files[0]);
			//console.log(input.files[0]);
			//File내용을 읽어 dataURL형식의 문자열로 저장
		}
	} //readURL()--

	//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
	$("#imgInp").change(function() {
		//alert(this.value); //선택한 이미지 경로 표시
		readURL(this);
	});

	//프로필 사진 변경 버튼
	$('#profileUpdateBtn').on('click', function() {
		var form = $('#fileForm')[0];
		var formData = new FormData(form);

		formData.append('file', $('#imgInp')[0].files[0]);
		$.ajax({
			type: 'POST',
			url: '/sumy/profileImgAdd',
			enctype: "multipart/form-data",
			processData: false,
			contentType: false,
			data: formData,
		}).done(function(result) {
			console.log("파일전송 성공");
			if (!confirm('프로필 변경을 완료하시겠습니까?')) {
				alert('프로필 변경을 취소하였습니다.');
			}
			$('#userProfileImage').attr('value', result);
			alert('프로필 변경을 완료하였습니다.');
			$("#profileUpdateModal").modal('hide');
			$('#blah2').attr('src', targetUrl);
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	});
});
