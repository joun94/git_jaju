$(function(){
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/getSaleboardList',
		data: {'pg': $('#pg').val(), 'sortinSelect': $('#sortinSelect').val()},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			
			$.each(data.list, function(index,items){
				
				$('<li/>').append($('<div/>',{
					class: 'item',
					id: items.sale_seq
				}).append($('<div/>',{
					class: 'thumb'
				}).append($('<a/>',{
					class: 'img'
				}).append($('<img/>',{
					src:"/jaju/storage/" + items.sale_image1,
					width:"308",
					height:"396"
				})))).append($('<a/>',{
					class: 'info'
					
				}).append($('<span/>',{
					class: 'name',
					text: items.sale_subject
					
				})).append($('<span/>',{
					class: 'cost'
				}).append($('<span/>',{
					class:"price",
					text: items.sale_price+'원'
				})))
				)).appendTo($('.inner_listgoods  .list'));
				
			}); //each
			$(document).on('click', '.item', function(){
//				if(data.memId == null){
//					alert("먼저 로그인 하세요");
//				}else {
					var seq = $(this).attr('id');
					location.href = '/jaju/saleboard/saleboardView?sale_seq='+seq;
//				}
			});
			
			$('#pagingDiv').html(data.saleboardPaging.pagingHTML);
			
		}, error: function(err){
			console.log(err);
			alert('리스트 생성 오류');
			
		}
	});
	
});

$('#searchBtn').click(function(){
	
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/getSearchSaleboardList',
		data: {'pg': $('#searchPg').val(), 'sale_category': $('#selectBox').val(), 'searchText' : $('#searchText').val()},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			
			$('.inner_listgoods .list li').remove();
			
			$.each(data.list, function(index,items){
				
				$('<li/>').append($('<div/>',{
					class: 'item',
					id: items.sale_seq
				}).append($('<div/>',{
					class: 'thumb'
				}).append($('<a/>',{
					class: 'img'
				}).append($('<img/>',{
					src:"/jaju/storage/" + items.sale_image1,
					width:"308",
					height:"396"
				})))).append($('<a/>',{
					class: 'info'
					
				}).append($('<span/>',{
					class: 'name',
					text: items.sale_subject
					
				})).append($('<span/>',{
					class: 'cost'
				}).append($('<span/>',{
					class:"price",
					text: items.sale_price+'원'
				})))
				)).appendTo($('.inner_listgoods  .list'));
				
			}); //each
			$(document).on('click', '.item', function(){
//				if(data.memId == null){
//					alert("먼저 로그인 하세요");
//				}else {
					var seq = $(this).attr('id');
					location.href = '/jaju/saleboard/saleboardView?sale_seq='+seq;
//				}
			});
			
			$('#pagingDiv').html(data.saleboardPaging.pagingHTML);
			
		}, error: function(err){
			console.log(err);
			alert('검색 리스트 생성 오류');
			
		}
	});
});

$('#sortinSelect').change(function(){
	
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/getSaleboardList',
		data: {'pg': $('#pg').val(), 'sortinSelect': $('#sortinSelect').val()},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			
			$('.inner_listgoods .list li').remove();
			
			$.each(data.list, function(index,items){
				
				$('<li/>').append($('<div/>',{
					class: 'item',
					id: items.sale_seq
				}).append($('<div/>',{
					class: 'thumb'
				}).append($('<a/>',{
					class: 'img'
				}).append($('<img/>',{
					src:"/jaju/storage/" + items.sale_image1,
					width:"308",
					height:"396"
				})))).append($('<a/>',{
					class: 'info'
					
				}).append($('<span/>',{
					class: 'name',
					text: items.sale_subject
					
				})).append($('<span/>',{
					class: 'cost'
				}).append($('<span/>',{
					class:"price",
					text: items.sale_price+'원'
				})))
				)).appendTo($('.inner_listgoods  .list'));
				
			}); //each
			$(document).on('click', '.item', function(){
//				if(data.memId == null){
//					alert("먼저 로그인 하세요");
//				}else {
					var seq = $(this).attr('id');
					location.href = '/jaju/saleboard/saleboardView?sale_seq='+seq;
//				}
			});
			
			$('#pagingDiv').html(data.saleboardPaging.pagingHTML);
			
		}, error: function(err){
			console.log(err);
			alert('리스트 생성 오류');
			
		}
	});
	
});
