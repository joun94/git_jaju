<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/saleboardList.css" />
</head>
<body>

<div id="saleboardListDiv">

		<div class="search_bt">
			
			<select id="sortinSelect" class="selectBox" >
				<option value="sale_date">최신순</option>
				<option value="sale_hit">인기순</option>
				<option value="low_sale_price">낮은가격순</option>
				<option value="sale_price">높은가격순</option>
			</select> 
			
			<select id="selectBox" class="selectBox">
				<option value="*">전체</option>
				<option value="디지털기기">디지털기기</option>
				<option value="도서">도서</option>
				<option value="생활가전">생활가전</option>
				<option value="의류">의류</option>
			</select> 
			<input type="text" name="searchText" id="searchText" value="" required="">
			<input type="image" src="/jaju/jajuImage/search.JPG" align="absmiddle" width="20" height="20" id="searchBtn">
		</div>

		<!-- 리스트 -->
	<div id="goodsList" class="page_section section_goodslist">
		
		<div class="list_goods">
			<div class="inner_listgoods">
				<ul class="list">
					
				</ul>
			</div>
		</div>
		
		<!-- 페이징 -->
		<div id="pagingDiv">
			
		</div>
		
	</div>
</div>
<input type="hidden" id="pg" value="${param.pg }">
<input type="hidden" id="searchPg" value="1">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/saleboardList.js"></script>
<script type="text/javascript" >
$('.item').click(function(){
	location='/jaju/saleboard/saleboardView';
});
function saleboardPaging(pg){
	var searchText = document.getElementById('searchText').value;
	
	if(searchText == ''){
		location.href = '/jaju/saleboard/saleboardList?pg='+pg;
	} else{
		$('#searchPg').val(pg);
		$('#searchBtn').trigger('click');
		//location.href = 'boardSearch?pg='+pg+'&select='+$('#select option:selected').val() +'&keyword='+$('#keyword').val();
		//encodeURIComponent('${keyword}');
		$('#searchPg').val(1);
	}	 	
}

</script>

</body>
</html>