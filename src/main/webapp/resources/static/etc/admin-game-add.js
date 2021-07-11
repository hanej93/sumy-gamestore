let gameAdd = {
	init: function(){
		$("#btn-game-add").on("click",()=>{
			this.add();
		});
		
		
		$("#btn-game-add-parent").on("click",()=>{
			this.valid();
		});
	},
	
	add: function(){
  
		let stringNum = $("#sumy-game-input-price").val();
		let regex = /[^0-9]/g;
		let numberToString = stringNum.replace(regex,"");
		
		let categoryList = {gameCategoryId1:null,
							gameCategoryId2:null,
							gameCategoryId3:null,
							gameCategoryId4:null};
	    $("#sumy-game-category input[type='checkbox']:checked").each(function (index) {
			let categoryStr = "gameCategoryId" + (index+1);
			categoryList[categoryStr] = $(this).val();
		});

		let data = {
			gameTitle:$("#gameTitle").val(),			
			gameDev:$("#gameDev").val(),				
			gameRate:$("#gameRate").val(),				
			gamePrice: numberToString,
			gameSubText:$("#gameSubText").val(),			
			gameMainText:$("#summernote").val(),
			gameDiscountRate:$("#sumy-game-discount-rate").val(),
			gameCategoryId1:categoryList.gameCategoryId1,			
			gameCategoryId2:categoryList.gameCategoryId2,			
			gameCategoryId3:categoryList.gameCategoryId3,					
			gameCategoryId4:categoryList.gameCategoryId4			
			
		};
		
		var form =$('#fileForm')[0];
		var formData = new FormData(form);
		
		var len = $('#input-multiple-image')[0].files.length;

		for(var i = 0; i < len; i++ ){
			console.dir($('#input-multiple-image')[0].files[i]);
			formData.append("files", $('#input-multiple-image')[0].files[i]);
		}
		
		
		formData.append('gameInfo', new Blob([JSON.stringify(data)] , {type: "application/json"}));
		formData.append('file', $('#fileAttachment'));
		formData.append('files', $('#input-multiple-image')[0]);
		
		
		
		$.ajax({
            type: 'POST',
            url: '/admin/game/add',
			enctype: "multipart/form-data",
            processData: false,
            contentType:false,
            data: formData,
        }).done(function() {
            $("#exampleModal2").modal('show');
        }).fail(function (error) {
            alert(JSON.stringify(error));
		});
		
		
		
		
		
		
		
		
		/*$.ajax({
			type:"POST", //겟(셀렉트-조회) 포스트(인서트-추가) 풋(업데이트-수정) 딜리트(딜리트-삭제)
			url:"/admin/game/add",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", // 바디의 타입을 명시
			dataType:"json" 
		}).done(function(resp){ // 200 
			$("#exampleModal2").modal('show'); // 부트스트랩 css, js
		}).fail(function(error){ // 500
			console.log(error); 
			alert(JSON.stringify(error));
		});*/
	},
	
	valid:function(){
		if($("#gameTitle").val() == ""){
			alert("게임제목을 입력해주세요!");
			$("#gameTitle").focus();
			return false;
		};
		
		if($("#gameDev").val() == ""){
			alert("게임제작사명을 입력해주세요!");
			$("#gameDev").focus();
			return false;
		};
		
		if($("#gameRate").val() == ""){
			alert("게임등급을 입력해주세요!");
			$("#gameRate").focus();
			return false;
		};
		
		if($("#fileAttachment").val() == ""){
			alert("이미지를 첨부해주세요!");
			$("#fileAttachment").focus();
			return false;
		}
		
		if($("#sumy-game-input-price").val() == ""){
			alert("게임가격을 입력해주세요!");
			$("#sumy-game-input-price").focus();
			return false;
		};	
		
		if( $("#sumy-game-category input[type='checkbox']:checked").length<1){
			alert("카테고리를 최소 1개입력해주세요!");
			return false;
		};
		
		if($("#gameSubText").val() == ""){
			alert("게임설명을 입력해주세요!");
			$("#gameSubText").focus();
			return false;
		};
		
		if($("#summernote").val() == ""){
			alert("게임본문을 입력해주세요!");
			$("#summernote").focus();
			return false;
		};
		
		if($("#input-multiple-image").val() == ""){
			alert("이미지를 첨부해주세요!");
			$("#input-multiple-image").focus();
			return false;
		}
		
		$('#exampleModal').modal('show');
		
		
	}
	
	
}

gameAdd.init();


