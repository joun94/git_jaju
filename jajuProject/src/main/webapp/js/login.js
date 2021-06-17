$(function(){
	$('.sign_in_item a').css('color', '#064acb')
});

$('#loginBtn').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	if($('#member_id').val() == ''){
		$('#idDiv').css({'color': '#b3130b', 'font-size': '8pt', 'font-weight': 'bold'});
		$('#idDiv').html('아이디를 입력해주세요');
	}else if($('#member_pwd').val() == ''){
		$('#pwdDiv').css({'color': '#b3130b', 'font-size': '8pt', 'font-weight': 'bold'});
		$('#pwdDiv').html('비밀번호를 입력해주세요');
	}else{
		$.ajax({
			url: '/jaju/member/login',
			type: 'post',
			data: $('#form').serialize(),
			dataType: 'text',
			success: function(data){
				if(data == 'success'){
					location.href="/jaju/";
				}else{
					alert('아이디 또는 비밀번호를 확인해주세요')
				}
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});