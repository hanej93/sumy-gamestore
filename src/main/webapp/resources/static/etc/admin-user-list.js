let gameList = {
	init: function(){
		$('#user-nickname-search-btn').on('click', ()=>{
			this.search();
		});
		
		$('#blacklist-checkbox').on('change',()=>{
			this.blacklist();
		});
		
		 //경고 횟수 추가
		$("[id^='sumy-warning-plus']")
        $("[id^='sumy-warning-plus']").on("click",function(){
			let plusBtn = $(this);
        	gameList.warningPlus(plusBtn);
        });

        //경고 횟수 감소
        $("[id^='sumy-warning-minus']").on("click",function(){
			let minusBtn = $(this);
        	gameList.warningMinus(minusBtn);
        });

		// 모달이 켜졌을 때
		$("[id^='exampleModal1']").on('show.bs.modal', function () {
			// 유저 아이디로 정보 가져오기!!
			let data = {
				userId:$(this).attr("userid")
			}
			console.log($(this).attr("userid"));
			$.ajax({
				type:"post", 
				url:"/admin/user/memo",
				data:JSON.stringify(data),
				contentType:"application/json;charset=utf-8", 
				dataType:"json" 
			}).done(function(resp){ 
				console.log(resp);
				console.log(resp.data.userId);
				let userId = resp.data.userId;
				console.log(resp.data.userMemo);
				console.log(resp.data.userWarningCount);
				let userWarningCountStr = "#sumy-warning-num" + userId;
				let userMemoStr = "#userMemo" + userId;
				$(userMemoStr).val(resp.data.userMemo);
				$(userWarningCountStr).text(resp.data.userWarningCount);
				
			}).fail(function(error){ 
				console.log(error); 
				alert(JSON.stringify(error));
			});
			
			
	    });

		// 저장확인버튼 클릭했을 때
		$("[id^='saveBtn']").on('click', function () {
			// 수정된 것들 서버로 보내기!!
			let userIdStr = $(this).attr("userid");
			let userWarningCountStr = "#sumy-warning-num" + userIdStr;
			let userMemoStr = "#userMemo" + userIdStr;
			
			let data = {
				userId:$(this).attr("userid"),
				userWarningCount:$(userWarningCountStr).text(),
				userMemo:$(userMemoStr).val()
			}
			$.ajax({
				type:"PUT", 
				url:"/admin/user/memo",
				data:JSON.stringify(data),
				contentType:"application/json;charset=utf-8", 
				dataType:"json" 
			}).done(function(resp){ 
				console.log(resp);
			}).fail(function(error){ 
				console.log(error); 
				alert(JSON.stringify(error));
			});
			
	    });
		
		
		// 삭제버튼을 눌렀을 때
		$("[id^='delBtn']").on('click', function () {
			let userId = $(this).attr("userid");
			gameList.delete(userId);
		});


	},
	
	search: function(){
				
		var url = "/admin/user/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#user-nickname-search').val();

		location.href = url;
	
	},
	
	blacklist: function() {
		console.log($('#blacklist-checkbox').prop('checked'));
		let data = {
			userBlacklist:$('#blacklist-checkbox').prop('checked')
		};
		
		$.ajax({
			type:"POST", 
			url:"/admin/user/list",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			console.log(resp);
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
		
	},
	
	warningPlus: function(plusBtn) {
		//let warningNum = $("#sumy-warning-num").text();
		//let warningNum = $("#sumy-warning-plus").parent().children("span").text();
		let warningNum = plusBtn.parent().children("span").text();
		
        if(warningNum < 3){
            plusBtn.parent().children("span").text(Number(warningNum)+1);
        }

	},
	
	warningMinus: function(minusBtn) {
		//let warningNum = $("#sumy-warning-num").text();
		let warningNum = minusBtn.parent().children("span").text();
        if(warningNum > 0){
            minusBtn.parent().children("span").text(Number(warningNum)-1);
        }
	},
	
	delete: function(userId) {
		
		alert("버튼클릭확인" +userId);
		
		let data = {
			userId:userId
		}
		
		$.ajax({
			type:"DELETE", 
			url:"/admin/user/list",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			location.href = "/admin/user/list";
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
	}
	
	
}

gameList.init();



