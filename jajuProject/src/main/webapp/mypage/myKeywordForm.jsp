<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/jaju/css/myKeyword.css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<!-- 키워드 등록  -->
	
<div id="myKeywordDiv" align="center">

	<div class="head_aticle">
		<h2 class="tit">&emsp;관심 키워드 등록</h2>
	</div>
	
	<div class="board-header-container">
		<ul class="list-description">
			<li>관심 키워드를 등록하는 곳 입니다. </li>
			<li>관심 키워드는 최대 5개 까지 가능합니다.</li> 
		</ul>
	</div>
	
	<table border="1" id="myKeywordTable" cellpadding="5" width="550" bordercolor="#263343" align="center" frame="hsides" rules="rows">
	
				<tr class="text">
					<td width="150px">관심키워드</td>
					<td width="150px">
					<input type="text" placeholder="키워드를 선택해주세요.">
					</td>
				</tr>
	
				<tr class="keywordList">
					<td width="150px"><input type="checkbox" class="digital"> 디지털/가전</td>
					<td width="150px"><input type="checkbox" class="life"> 생활</td>
					<td width="150px"><input type="checkbox" class="instant_food"> 가공식품</td>
				</tr>
				
				<tr class="keywordList">
					<td width="150px"><input type="checkbox" class="women_cloth"> 여성의류</td>
					<td width="150px"><input type="checkbox" class="beauty"> 뷰티/미용</td>
					<td width="150px"><input type="checkbox" class="furniture"> 가구/인테리어</td>
				</tr>
			
				<tr class="keywordList">
					<td width="150px"><input type="checkbox" class="sport"> 스포츠/레저</td>
					<td width="150px"><input type="checkbox" class="men_choth"> 남성/패션잡화</td>
					<td width="150px"><input type="checkbox" class="dogCat"> 반려동물용품</td>
				</tr>
	
				<tr class="keywordList">
					<td width="150px"><input type="checkbox" class="kids"> 유아동/유아도서</td>
					<td width="150px"><input type="checkbox" class="womenAcc"> 여성잡화</td>
					<td width="150px"><input type="checkbox" class="game"> 게임/취미</td>
				</tr>
	
				<tr class="keywordList">
					<td width="150px"><input type="checkbox" class="kitchen"> 주방용품</td>
					<td width="150px"><input type="checkbox" class="book"> 도서/티켓/음반</td>
					<td width="150px"><input type="checkbox" class="else"> 기타 중고물품</td>
				</tr>		
				
	</table>	
	
	<div class="mainMessage">
		<div class="message_Btn">
			<span class="deleteBtn">등록&emsp;</span>
			<span class="sendBtn">다시선택</span>
	</div>
	
		<!--<div class="message_Btn">
			<input type="button" value="등록" class="deleteBtn"/>
			<input type="reset" value="다시선택" class="sendBtn"/>
		</div> message_Btn -->	
	</div>
</div>
</body>
</html>