//리스트
$(function(){
	$.ajax({
		type: 'post',
		url: '/jaju/freeboard/getFreeboardList',
		dataType: 'json',
		success: function(data){
			//console.log(JSON.stringify(data));
		
			  $.each(data.list, function(index, items){
		            $('<tr/>').append($('<td/>',{
		               align:'center',
		               text: items.board_seq
		               
		            })).append($('<td/>',{
			               
		               }).append($('<a/>',{//제목 td의자식
		            	   href: '#',
			               text: items.board_subject,
			               id: 'item',
			               //class: 'subject_'+items.seq
		                  
		               })) 
		            ).append($('<td/>',{
		               align:'center',
		               text: items.board_id
		               
		            })).append($('<td/>',{
		               align:'center',
		               text: items.logtime
		               
		            })).append($('<td/>',{
		               align:'center',
		               text: items.board_hit
		               
		            })).appendTo($('#freeboardListTable'));
	
			}); //each
			  
			  $(document).on('click', '#item', function(){ //a태그에 아이디 준거 subjectA 그거의 부모 찾고 그 부모의 앞에거를 찾고

		               var seq = $(this).parent().prev().text();
		               location.href = '/jaju/freeboard/freeboardView?board_seq='+seq;
		               //location.href = '/jaju/freeboard/freeboardView?board_seq='+seq+'&pg='+$('#pg').val();

		         });

						   
		}, 
			error:function(err){
			console.log(err);
		}
	});
});

//검색