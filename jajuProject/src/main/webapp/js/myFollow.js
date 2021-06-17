$(document).ready(function(){
	//만약 받아온 값 null이면 팔로우한 계정이 없습니다.
	$.ajax({
		url : '/jaju/mypage/getFollowList',
		type : 'post',
		//data : 'id='+$('#id').val(),
		data : 
		{
			'id': 'hihi',
			'pg': $('#pg').val()
			//'pg':'1'
		},
		dataType : 'json',
		success:function(data){
			
			console.log(JSON.stringify(data));//JSON형식 그대로 보여줭
			//이미지, 아이디 붙이기.
			
			$.each(data.list, function(index, items){
				
				if(data.list=="list:[]"){
					$('<tr/>').append($('<td/>',{
						align:'center',
						text:'팔로우 리스트가 없습니다.'
					})).appendTo($('#followListTable'));
				}
				else {
					$('<tr/>').append($('<td/>',{
						align:'center',
						}).prepend($('<input>',{
							type:'checkbox',
							name:'check',
							value:items.follow_seq,
						}))
						).append($('<td/>',{
							align:'center',
							style:'width:60px; height:60px; cursor:pointer;',

							}).append($('<img/>',{
							//src:'/jaju/storage/'+'이미지이름',//items.image1,
							src:'/jaju/jajuImage/unnamed.png',//items.image1,
							style:'width:50px; height:50px; cursor:pointer;',
							class:"img_"+'3'//items.follow_seq
						}))
					).append($('<td/>',{
						align:'center',
						text:items.follow_id
					})).appendTo($('#followListTable'));
				
				}//else
				
				//프로필을 누르면 해당 사람의 정보 띄워주기(이미지 or 아이디)
				$('.img_'+items.seq).click(function(){//seq, pg 
					location.href='/jaju/mypage/followingView'
				});
				
			});//each
			
			$('#followPagingDiv').html(data.mypagePaging.pagingHTML);
			
		},
		error:function(err){
			console.log(err);
		}
	});	
});

//전체 선택 또는 해제
$('#all').click(function(){
	//alter($('#all').attr('checked'));//checked 속성이 없어서 undefind으로 나온다.
	alert($('#all').prop('checked'));//attr이 아니라 값으로 가져와야한다. 

	if($('#all').prop('checked')){
		$('input[name=check]').prop('checked',true);
	}else {
		$('input[name=check]').prop('checked',false);
	}
});

//선택삭제
$('#deleteBtn').click(function(){
	var count = $('input[name=check]:checked').length;
	
	alert($('input[name=check]:checked').val());
	
	if(count==0){
		alert("삭제할 항목을 선택 하세요");
	}else {
		if(confirm("정말로 삭제 하시겠습니까?")){
			$('#myFollowForm').submit();
			alert('삭제 완료 되었습니다.');
		}else{
			alert('삭제에 실패했습니다. 다시 선택해주세요.');
		}
	}
});

