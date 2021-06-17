//1:1문의 view띄우기
$(function(){
	$.ajax({
		type : 'post',
		url : '/jaju/serviceCenter/getInquireView',
		data : 'seq='+$('#inquiry_seq').val(),
		dataType : 'json',
		success : function(data){
			console.log(data);
			
			$('#inquiry_subject').text(data.inquireDTO.inquiry_subject);
			$('#inquiry_id').text(data.inquireDTO.inquiry_id);
			$('#logtime').text(data.inquireDTO.logtime);
			$('#inquiry_telephone').text(data.inquireDTO.inquiry_telephone);
			$('#inquiry_contents').text(data.inquireDTO.inquiry_contents);
			$('#inquiry_image1').attr('src','../storage/'+data.inquireDTO.inquiry_image1);
		},
		error : function(err){
			console.log(err);
		}
	});
});