let reportList = {
	init: function(){
		
		// 닉네임(신고대상)으로 검색
		$('#report-nickname-search-btn').on('click', ()=>{
			this.search();
		});
		
		// 읽음 상태에 따른 조회 (미구현)
		$('#readYn-select').on('change', ()=>{
			this.search();
		});
		
		// 읽음 상태 변경
		$("[id^='readYn-checkbox']").on('change',function(){
			let checkBox =$(this);
			reportList.updateReadYn(checkBox);
		});
		
		
		// 경고 횟수 추가 (미구현)
        $("[id^='sumy-warning-plus']").on("click",function(){
			let plusBtn = $(this);
        	reportList.warningPlus(plusBtn);
        });

        // 경고 횟수 감소 (미구현)
        $("[id^='sumy-warning-minus']").on("click",function(){
			let minusBtn = $(this);
        	reportList.warningMinus(minusBtn);
        });
		
		// 모달이 꺼졌을 때 경고횟수 저장
		$("[id^='exampleModal1']").on('hidden.bs.modal', function () {
			let modal = $(this);
			var toUserId = modal.attr("toUserId");
			var reportId = modal.attr("reportId");
			
			let userWarningCountStr = "#sumy-warning-num" + reportId;
			
			var data = {
				toUserId:toUserId,
				toUserWarningCount:$(userWarningCountStr).text()
				
			}
			
			$.ajax({
				type:"put", 
				url:"/admin/report/memo",
				data:JSON.stringify(data),
				contentType:"application/json;charset=utf-8", 
				dataType:"json" 
			}).done(function(resp){ 
				location.reload();
			}).fail(function(error){ 
				console.log(error); 
				alert(JSON.stringify(error));
			});
			
		});

	},
	
	// 페이지 GET 요청
	search: function(){
				
		var url = "/admin/report/list";

		url = url + "?nowPage=" + 1;

		url = url + "&keyword=" + $('#report-nickname-search').val();

		location.href = url;
	
	},
	
	// 읽음상태 수정
	updateReadYn: function(checkBox) {
		console.log(checkBox.prop('checked'));
		var reportReadYn = 0;
		if(checkBox.prop('checked')){
			reportReadYn = 1;
		}
		
		
		let data = {
			reportReadYn:reportReadYn,
			reportId:checkBox.attr("reportId")
		};
		
		$.ajax({
			type:"PUT",
			url:"/admin/report/readYn",
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
	
	// 경고 증가
	warningPlus: function(plusBtn) {
		let warningNum = plusBtn.parent().children("span").text();
		
        if(warningNum < 3){
            plusBtn.parent().children("span").text(Number(warningNum)+1);
        }

	},
	
	// 경고 감소
	warningMinus: function(minusBtn) {
		let warningNum = minusBtn.parent().children("span").text();
        if(warningNum > 0){
            minusBtn.parent().children("span").text(Number(warningNum)-1);
        }
	},
	
	// 신고리스트 삭제
	delete: function(userId) {
		
		alert("버튼클릭확인" +userId);
		
		let data = {
			userId:userId
		}
		
		$.ajax({
			type:"DELETE", 
			url:"/admin/report/list",
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8", 
			dataType:"json" 
		}).done(function(resp){ 
			location.href = "/admin/report/list";
		}).fail(function(error){ 
			console.log(error); 
			alert(JSON.stringify(error));
		});
	}
}

reportList.init();



