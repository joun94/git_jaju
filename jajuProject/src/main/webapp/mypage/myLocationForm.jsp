<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/myLocation.css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<%--Geolocation API(GPS)이건 현재 위치 가져오는 api --%>
	<!-- 관심지역등록 -->

	<div class="head_aticle">
		<h2 class="tit">&emsp;관심 지역 등록</h2>
	</div>

	<div class="board-header-container">
		<ul class="list-description">
			<li>관심 지역을 등록하는 곳 입니다.</li>
			<li>관심지역은 기본 주소포함 최대 3개 까지 가능합니다. 시도, 시군구, 동 을 모두 선택해주세요.</li>
		</ul>
	</div>

	<p class="localset_none">
		<strong>'지역추가'</strong> 버튼을 누르고 지역을 설정하십시오.<br>지역은 최대 3개까지 설정
		가능하며, 신규지역 추가 시 관심지역에 따라 매물이 보여집니다.
	</p>

	<!-- select Box 로 선택 -->
	<table border="1" id="myLocationTable" cellpadding="5" width="550" bordercolor="#263343" align="center" frame="hsides" rules="rows">
		<tr>
			<td align="center" width="150px">시도</td>
			<td width="150px" align="center">시.군.구</td>
			<td width="150px" align="center">동</td>
		</tr>
	</table>
	
	<!-- select box -->
	<div align="center">
		<select name="sido1" id="sido1"></select>
		<select name="gugun1" id="gugun1"></select>
		<select name="dong1" id="dong1"></select>
	</div>
	
	<!-- 동적 드롭 다운으로 선택한 지역 보여주기.-->
	<div class="console" id="result_location">
		<div id="output_location"><!-- 이거 뺴기? -->
			 <span id="selected_sido">시도</span>
			 <span id="selected_sigungu">시군구</span>
			 <span id="selected_dong">동</span>
		</div>
	</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/jaju/js/myLocation.js"></script>
</body>
</html>