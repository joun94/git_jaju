<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>follow</title>
<link rel="stylesheet" href="/jaju/css/myFollow.css" />
</head>
<body>
<!-- 팔로우 리스트 : 팝업으로 띄우기 -->

	<div class="head_aticle">
		<h2 class="tit">&emsp;팔로우 목록</h2>
	</div>

	<div class="board-header-container">
		<ul class="list-description">
			<li>팔로우 한 유저의 아이디를 눌러 판매상품을 확인해보세요!</li>
		</ul>
	</div>

<!-- 스크랩 jquery이용해서 each로 받아온 사진 뿌리기. 형태만 잡기 -->
	<div class="followListDiv">
			<table border="1" id="followListTable" cellpadding="5" width="750px" bordercolor="" align="center" frame="hsides" rules="rows">
				<tr class="title">
							<th><input type="checkbox" id="all" name="all" value="all"></th>
							<th>프로필 이미지</th>
							<th>아이디</th>
				</tr>
			</table>
		<br>
		
		<table align="center">
				<tr>
					<td colspan="6" align="center">
					<input type="submit" value="선택삭제" id="choiceDeleteBtn">
					</td>
				</tr>
		</table>
	</div>	
		
</body>
</html>