$(window).on('beforeunload', function(){
    //do something
    return "창을 종료 하시겠습니까?";
});

$(function(){
	//messageView 상세 페이지 가져오기
	$.ajax({
		url:'/jaju/mypage/myMessageView',
		type:'post',
		data:{
			'seq':$('#seq').val(),
			'pg':$('#pg').val()
		},
		dataType:'json',
		success:function(data){
			console.log(data.messageDTO);
			//messageDTO 로 넘어오니 each문 필요없음
			$('#subjectSpan').html(data.messageDTO.message_subject);
			$('#message_seq_Span').html(data.messageDTO.message_seq);
			$('#message_writer_Span').html(data.messageDTO.message_writer);
			$('#message_date_Span').html(data.messageDTO.message_date);
			$('#message_content_Span').html(data.messageDTO.message_content);

		},error:function(err){
			console.log("err발생"+err);
		}
	});
	//span tag append 하기
	
	//답장버튼 (#sendBtn) 누르면 답장 쓰는 페이로 이동 
});