$(function(){
	$.ajax({
		type:'post',
		url: '/jaju/freeboard/getFreeboardView', //한 사람거 가져와서 getBoard 가져옴
		data: {'board_seq': $('#board_seq').val()},
		dataType:'json',
		success:function(data){
			//console.log(data);
			
			$('#subjectSpan').text(data.freeboardDTO.board_subject);
			$('#idSpan').text(data.freeboardDTO.board_id);
			$('#dateSpan').text(data.freeboardDTO.logtime);
			$('#hitSpan').text(data.freeboardDTO.board_hit);
			$('#contentSpan').text(data.freeboardDTO.board_content);
			
			//이미지 맵
			let map = new Map();
			
			map.set("image1", data.freeboardDTO.image1+'');
			map.set("image2", data.freeboardDTO.image2+'');
			map.set("image3", data.freeboardDTO.image3+''); //null값 방지
			
			for(var i=1; i<=3; i++){
				if(map.get('image'+i) != 'null'){
					$('#imageDiv').append($('<img/>',{
						width:"300",
						height:"300",
						class:"boardImg",
						src: '/jaju/storage/'+map.get('image'+i)
					}));
				}
			}
			
			//로그인 한다면
			//if(data.memId == data.boardDTO.id)
			//	$('#boardViewSpan').show();
			//else
			//	$('#boardViewSpan').hide();
		},
		error: function(err){
			console.log(err);
		}
	});
});