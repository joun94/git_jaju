$(function(){
	$.ajax({
		type: 'post',
		url : '/jaju/mypage/mySaleRecodeList',
		//data: 'pg=${pg}', //컨트롤러부터 넘어온 값이고 
		data: 'pg='+$('#pg').val() ,  // --->hidden의 값을 쓸때
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			
			$.each(data.list, function(index, items){
				$('<div/>').append($('<div/>',{
					class: 'RecodeMain',
					style: 'text-align:center'
						
				}).append($('<a/>',{
					href:'#',
					text:'제목'
				}).append($('<label>',{
					style: 'cursor:pointer',
					text: items.sale_subject
				}))
				)
				).append($('<div/>',{
					class: 'order_info'
				}).append($('<div/>',{
					class: 'desc'
				}).append($('<div/>',{
					class: 'thumb'
				}).append($('<img/>',{
					src: '/jaju/storage/'+items.sale_image1,
					alt: '해당 주문 대표 상품 이미지'
				}))
				).append($('<dl/>',{
					
				}).append($('<dt/>',{
					text:'가격'
				})).append($('<dd>',{
					text: items.sale_price
				}))
				).append($('<dl/>',{
					
				}).append($('<dt/>',{
					text:'상태'
				})).append($('<dd>',{
					class: 'status end',
					text: items.sale_state
				}))
				).append($('<dl/>',{
					
				}).append($('<dt/>',{
					text:'날짜'
				})).append($('<dd>',{
					text: items.sale_date
				})))
				)
				).appendTo($('#tabTable'))
				
				
			});//each
			
			//페이징처리
			$('#mySaleRecodePagingDiv').html(data.myRecodePaging.pagingHTML);
			
		},
		error: function(err){
			console.log('saleList에러발생'+err);
		}
	});
});

function myRecodePaging(pg){
	location.href="mySaleRecode?pg="+pg;
}
