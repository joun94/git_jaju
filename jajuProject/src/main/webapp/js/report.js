//글쓰기
$('#bhs_button').click(function(){
	$('#itemcdDiv').empty();
	$('#subjectDiv').empty();
	$('#mobileDiv').empty();
	$('#contentsDiv').empty();
	
	if($('#reportType').val() == ''){
		$('#itemcdDiv').text('신고 유형을 선택해주세요');
		$('#itemcdDiv').css('color', 'red');
        $('#itemcdDiv').css('font-size', '10pt');
        $('#itemcdDiv').css('font-weight', 'bold');
	}else if($('#report_subject').val() == ''){
        $('#subjectDiv').text('제목을 입력하세요');
        $('#subjectDiv').css('color', 'red');
        $('#subjectDiv').css('font-size', '10pt');
        $('#subjectDiv').css('font-weight', 'bold');
	}else if($('#report_tal').val() == ''){
		$('#mobileDiv').text('전화번호를 입력하세요');
		$('#mobileDiv').css('color', 'red');
		$('#mobileDiv').css('font-size', '10pt');
		$('#mobileDiv').css('font-weight', 'bold');
	}else if($('#report_content').val() == ''){
		$('#contentsDiv').text('내용을 입력하세요');
		$('#contentsDiv').css('color', 'red');
		$('#contentsDiv').css('font-size', '10pt');
		$('#contentsDiv').css('font-weight', 'bold');
	}else{
		
		var formData = new FormData($('#reportWriteForm')[0]);
		$.ajax({
			type: 'post',
		 	url: '/jaju/serviceCenter/reportWrite',
		 	enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
		 	data: formData,
		 	success: function(){
		 			alert('신고가 접수되었습니다.');
		 			location.href='/jaju/serviceCenter/reportList'
		 	},
		 	error: function(err){
		 		console.log(err);
		 	}
		});
	}
});

//목록
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/jaju/serviceCenter/getReportList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
	         
	        $.each(data.list, function(index, items){
	            console.log(data);
	            
	        	$('<tr/>').append($('<td/>',{
	        		width: '8%',
	                align: 'center',
	                text: items.report_seq
	            })).append($('<td/>',{
	            	width: '20%',
	            	align: 'center',
	            	text: items.reportType
	            })).append($('<td/>',{
	            	
	            	}).append($('<a/>',{
	            		//href: '#',
	            		href: '/jaju/serviceCenter/reportView',
	            		text: items.report_subject,
	            	}))
	            ).append($('<td/>',{
	            	width: '12%',
	                align: 'center',
	                text: items.report_id
	            })).append($('<td/>',{
	            	width: '12%',
	            	align: 'center',
	            	text: items.logtime
	            })).append($('<td/>',{
	            	width: '12%',
	            	align: 'center',
	            	text: items.report_state
	            })).appendTo('.reportListTable');
            
	        }); //each
	        
	        //페이징 처리
	        $('.pagediv').html(data.reportPaging.pagingHTML);
         
		},
      	error: function(err){
      		console.log(err);
      	}
      
	});
});

//페이징 이동
function reportPaging(pg){
	location.href = "/jaju/serviceCenter/reportList?pg="+pg;
}