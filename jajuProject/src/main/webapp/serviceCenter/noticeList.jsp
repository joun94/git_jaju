<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/noticeList.css" />
<jsp:include page="/serviceCenter/serviceMenu.jsp"/>
</head>
<body>

<form name="frmList" action="/shop/board/list.php?&amp;" onsubmit="return chkFormList(this)">
<input type="hidden" name="id" value="notice">

<div id="formTotal">
<div class="head_aticle" padding-left="10px">
	<h2 class="tit">공지사항 </h2>
</div>
<br><br>
<div id="totalDiv">
<table id="total" align="center" cellpadding="0" cellspacing="0">
<tbody>
<tr>

	<td>
	
	<div class="xans-element- xans-myshop xans-myshop-couponserial">
	<table width="100%" class="xans-board-listheader jh" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
	<tbody>
<tr>
	<td width="50"align="center">760 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=924">[가격인상공지] [제주도니] 제주 흑돼지 삼겹살 300g (냉장) 외 17건 (2021 6. 9 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-09</td>
</tr>

<tr>
	<td width="50" align="center">759 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=921">[가격인상공지] [미스터 브라운] RTD 캔커피 3종 (2021 6. 14 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-08</td>
</tr>

<tr>
	<td width="50"  align="center">758 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=919">[가격인상공지] [블랑101] 섬유유연제 블러쉬 1L 외 3종 (2021 6. 4 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-04</td>
</tr>

<tr>
	<td width="50" align="center">757 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=917">[가격인상공지] [백년백계] 닭 다리 300g(냉장) 외 3건 (2021 6. 8 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-03</td>
</tr>

<tr>
	<td width="50" align="center">756 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=918">[가격인상공지] [마더케이] 젖병건조대_네이비 외 9건 (2021 6. 4 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-04</td>
</tr>

<tr>
	<td width="50" align="center">755 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=916">[가격인상공지] [앙팡드봉봉] 한입에 쏙! 유기농 한입 솜사탕 레인보우 외 3건 (2021 6. 7 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-03</td>
</tr>

<tr>
	<td width="50" align="center">754 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=922">[가격인상공지] [라엘] 생리대 소형 (2021 6. 8 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-06-08</td>
</tr>

<tr>
	<td width="50" align="center">753 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=864">컬리러버스 혜택 변경 사전 공지</a>
	</td>
	<td width="100" align="center" class="eng2">2021-04-01</td>
</tr>

<tr>
	<td width="50" align="center">752 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=914">[마켓컬리] 택배 배송 중단 상품 공지 (2021.05.29 ~)</a>
	</td>
	<td width="100" align="center" class="eng2">2021-05-29</td>
</tr>

<tr>
	<td width="50" align="center">751 </td>
	<td style="padding-left:10px; text-align:left; color:#999">
		<a href="view.php?id=notice&amp;no=816">[마켓컬리] 베리체리페스티벌 인스타그램 이벤트 당첨자 안내</a>
	</td>
	<td width="100" align="center" class="eng2">2021-02-02</td>
</tr>

</tbody>
</table>
</div>
</td>

</tr>

</tbody>
</table>
<div class="layout-pagination">
	<div class="pagediv">
		<a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a><a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a><strong class="layout-pagination-button layout-pagination-number __active">1</strong><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a><a href="list.php?id=notice&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a><a href="list.php?id=notice&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a><a href="list.php?id=notice&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a><a href="list.php?id=notice&amp;page=6" class="layout-pagination-button layout-pagination-number">6</a><a href="list.php?id=notice&amp;page=7" class="layout-pagination-button layout-pagination-number">7</a><a href="list.php?id=notice&amp;page=8" class="layout-pagination-button layout-pagination-number">8</a><a href="list.php?id=notice&amp;page=9" class="layout-pagination-button layout-pagination-number">9</a><a href="list.php?id=notice&amp;page=10" class="layout-pagination-button layout-pagination-number">10</a><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a><a href="list.php?id=notice&amp;page=76" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
	</div>
</div>

<div id="totalSearch">
	<table class="xans-board-search xans-board-search2">
	
	<tbody>
	<tr>
		<td class="input_txt">
		<br>
			<div class="search">
				<select name="itemcd" width="20">
					<option value="01">제목</option>
					<option value="02">내용</option>
				</select>
			</div>
			<div class="search_bt">
				<a href="javascript:document.frmList.submit()">
					<img src="/jaju/jajuImage/search.png" align="absmiddle">
				</a>
				<input type="text" name="search[word]">
			</div>
		</td>
	</tr>
	</tbody>
	</table>
</div>

</div>
</div>
</form>




</body>
</html>