$('#saleboardWriteBtn').click(function(){
	var formData = new FormData($('#saleboardWriteForm')[0]); //form 안에 있는 모든 것 다 넘김

	//유효성검사
	
	$.ajax({
		type: 'post',
		url: '/jaju/saleboard/saleboardWrite',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: formData,
		success: function(data) {
			alert("게시글 등록 완료");
			location.href='/jaju/saleboard/index';
		},
		error: function(err){
			console.log(err);
		}
	});
});