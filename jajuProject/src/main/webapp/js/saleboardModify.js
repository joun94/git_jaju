//불러오기
$(function(){

	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/getSaleboardView',
		data: {'sale_seq': $('#sale_seq').val()},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			//판매상태, 제목, 판매가격, 가격제한허용, 카테고리, 상품상태(새상품, 거의 새것, 사용감 있음, 사용감많음), 배송방법(직거래, 택배거래, 온라인거래), 내용, 이미지)
			$('#sale_subject').val(data.saleboardDTO.sale_subject);
			
			$('#sale_price').val(data.saleboardDTO.sale_price);
			
			if(data.saleboardDTO.sale_nego == 'on') {
				$("#sale_nego").attr("checked", true); 
			}
			
			$('#sale_category').val(data.saleboardDTO.sale_category);
			
			if(data.saleboardDTO.sale_condition == '새상품') {
				$('#new').attr("checked", true);
				
			}else if(data.saleboardDTO.sale_condition == '거의 새것') {
				$('#almostNew').attr("checked", true);
				
			}else if(data.saleboardDTO.sale_condition == '사용감있음') {
				$('#used').attr("checked", true);
				
			}else if(data.saleboardDTO.sale_condition == '사용감많음') {
				$('#veryused').attr("checked", true);
				
			}			
			
			var howTrade;
			if(data.saleboardDTO.sale_direct == 'on') {
				$("#sale_direct").attr("checked", true); 
			}
			if(data.saleboardDTO.sale_delivery == 'on') {
				$("#sale_delivery").attr("checked", true); 
			}
			if(data.saleboardDTO.sale_onlineTran == 'on') {
				$("#sale_onlineTran").attr("checked", true); 
			}
			$('#howTrade .desc').val(howTrade);
			
			$('#sale_content').val(data.saleboardDTO.sale_content);
			
			
			let map = new Map();
			
			map.set("image1", data.saleboardDTO.sale_image1);
			map.set("image2", data.saleboardDTO.sale_image2);
			map.set("image3", data.saleboardDTO.sale_image3+''); //null값 방지
			map.set("image4", data.saleboardDTO.sale_image4+'');
			map.set("image5", data.saleboardDTO.sale_image5+'');
			map.set("image6", data.saleboardDTO.sale_image6+'');
			map.set("image7", data.saleboardDTO.sale_image7+'');
			map.set("image8", data.saleboardDTO.sale_image8+'');
			map.set("image9", data.saleboardDTO.sale_image9+'');
			map.set("image10", data.saleboardDTO.sale_image10+'');
			
			for(var i=1; i<=10; i++){
				if(map.get('image'+i) != 'null'){
					$('#imageTd').append($('<img/>',{
						width:"80",
						height:"80",
						class:"miniImg",
						src: '/jaju/storage/'+map.get('image'+i)
					}));
				}
			}
		},
		error: function(err){
			console.log(err);
		}
		
	});
	
});


$('#saleboardModifyBtn').click(function(){
	
	var formData = new FormData($('#saleboardModifyForm')[0]); //form 안에 있는 모든 것 다 넘김
	
	//유효성 검사
	
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/saleboardModify',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: formData,
		success: function(data) {
			alert("게시글수정 완료");
			location.href='/jaju/saleboard/saleboardList';
		},
		error: function(err){
			console.log(err);
		}
	});
});