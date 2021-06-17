$(function(){
	
	
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/getSaleboardView',
		data: {'sale_seq': $('#sale_seq').val()},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			
			$('.goods_name .name').html(data.saleboardDTO.sale_subject);
			$('.dc .dc_price').html(data.saleboardDTO.sale_price+"원");
			if(data.saleboardDTO.sale_nego == 'on'){
				$('#sale_nego').text('네고가능');				
			}
			
			/*$.ajax({
				type: 'post',
				url: '/jaju/member/getMember',
				data: {'member_id': data.saleboardDTO.member_id},
				dataType: 'json',
				success: function(data){
					멤버의 프로필 사진 가져오기
					멤버의 주소 가져오기 
					멤버의 매너온도 가져오기
				},error: function(err){
					alert("회원 데이터 불러오기 에러");
					console.log(err);
				}
			});*/
			
			
			
			$('#sale_condition .desc').text(data.saleboardDTO.sale_condition);
			
			var howTrade = "";
			if(data.saleboardDTO.sale_direct == 'on'){
				howTrade = howTrade + '직거래  ';
			}
			if(data.saleboardDTO.sale_delivery == 'on'){
				howTrade = howTrade + '택배거래  ';
			}
			if(data.saleboardDTO.sale_onlineTran == 'on'){
				howTrade = howTrade + '온라인거래  ';
			}
			$('#howTrade .desc').text(howTrade);
			
			$('#sale_date .desc').text(data.saleboardDTO.sale_date);
			
			$('#sale_state .desc').text(data.saleboardDTO.sale_state);
			
			$('.thumb img').attr('src', '/jaju/storage/'+data.saleboardDTO.sale_image1);
			
			let map = new Map();
			
			map.set("image1", data.saleboardDTO.sale_image1);
			map.set("image2", data.saleboardDTO.sale_image2);
			map.set("image3", data.saleboardDTO.sale_image3+'');
			map.set("image4", data.saleboardDTO.sale_image4+'');
			map.set("image5", data.saleboardDTO.sale_image5+'');
			map.set("image6", data.saleboardDTO.sale_image6+'');
			map.set("image7", data.saleboardDTO.sale_image7+'');
			map.set("image8", data.saleboardDTO.sale_image8+'');
			map.set("image9", data.saleboardDTO.sale_image9+'');
			map.set("image10", data.saleboardDTO.sale_image10+'');
			
			
			for(var i=1; i<=10; i++){
				if(map.get('image'+i) != 'null'){
					$('#imageDiv').append($('<img/>',{
						width:"80",
						height:"80",
						class:"miniImg",
						src: '/jaju/storage/'+map.get('image'+i)
					}));
				}
			}
			$(document).on('click', '#imageDiv img', function(){				
				$('.thumb img').attr('src', $(this).attr('src'));
			});
			
			$('#contentSpan').text(data.saleboardDTO.sale_content);
			
		},error: function(err){
			alert("뷰 생성 에러");
			console.log(err);
		}
	});
	
});