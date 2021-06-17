//1:1문의리스트 
$(function(){
	$.ajax({
		type: 'post',
		url : '/jaju/serviceCenter/getInquireList',
		data : 'pg='+ $('#pg').val(),
		dataType : 'json',
		success : function(data){
			//console.log(JSON.stringify(data));
			//alert(JSON.stringify(data));
			if(JSON.stringify(data) != '{"list":[]}'){
				//alert(JSON.stringify(data));
				$('.no_data').hide();
				$.each(data.list, function(index, items){
					$('<tr/>').append($('<td/>',{
						align : 'center',
						width :'5%',
						text : items.inquiry_seq
					})).append($('<td/>',{
						align : 'center',
						width : '15%',
						text :items.inquiryType
					})).append($('<td/>',{
						}).append($('<a/>',{
							text : items.inquiry_subject,
							style : 'cursor : pointer',
							class : 'a'+ items.inquiry_seq
						}))
					).append($('<td/>',{
						align : 'center',
						width : '12%',
						text : items.inquiry_id
					})).append($('<td/>',{
						align : 'center',
						width : '12%',
						text : items.logtime
					})).append($('<td/>',{
						align : 'center',
						width : '12%',
						text : items.inquiry_state
					})).appendTo($('.inquireTable'));
					
					$('.a'+items.inquiry_seq).click(function(){
						location.href = '/jaju/serviceCenter/inquireView?seq='+items.inquiry_seq+'&pg=' + $('#pg').val();
					});
					
				});//each
				
			}else if(JSON.stringify(data) == '{"list":[]}'){
				$('#no_data').show();
			}
		},
		error : function(err){
			console.log(err);
		}
	});
});
