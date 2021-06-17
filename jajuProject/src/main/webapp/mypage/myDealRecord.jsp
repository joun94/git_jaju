<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/myDealRecord.css" />
</head>
<body>

<jsp:include page="/mypage/mypageMain.jsp" />

<div class="section_review">

<div class="head_aticle">
			<h2 class="tit">&emsp;거래내역</h2>
		</div>
	
		<div class="board-header-container">
			<ul class="list-description">
				<li>나의 거래내역을 확인해보세요.</li>
			</ul>
		</div>
		
	<div class="tabTable" align="center">
		<div class="RecordMain" style="text-align:left">
		 
		    <input id="tab1" type="radio" name="tabs" checked> 
		    <label for="tab1" text-align="center">판매 내역  <span>(1)</span> </label>
		 
		    <input id="tab2" type="radio" name="tabs">
		    <label for="tab2" text-align="center">구매 내역  <span>(1)</span> </label>
		 
		    <section id="content1" style="margin-bottom:20px;">
		    <table id="sellTable" border="1" cellpadding="5" cellspacing="0" frame="hsides" rules="rows">
		    <tr>
				<th width="200px" align="center">판매품목</th>
				<th width="200px" align="center">아이디</th>
				<th width="200px" align="center">가격</th>
				<th width="200px" align="center">날짜</th>
			</tr>
			<tr>
				<td width="200px" align="center">노트북</td>
				<td width="200px" align="center">abc</td>
				<td width="200px" align="center">1000</td>
				<td width="200px" align="center">2.3</td>
			</tr>
			</table>
		    </section>
		 
		    <section id="content2" style="margin-bottom:20px;">
		    <table id="buyTable" border="1" cellpadding="5" cellspacing="0" frame="hsides" rules="rows">
		    <tr>
				<th width="200px" align="center">구매품목</th>
				<th width="200px" align="center">아이디</th>
				<th width="200px" align="center">가격</th>
				<th width="200px" align="center">날짜</th>
			</tr>
				<tr>
				<td width="200px" align="center">인형</td>
				<td width="200px" align="center">eee</td>
				<td width="200px" align="center">5000</td>
				<td width="200px" align="center">5.7</td>
			</tr>
			</table>
		    </section>
		</div>
	</div>
</div>
</body>
</html>