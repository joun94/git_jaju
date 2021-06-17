<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/freeboardList.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="frmList">
<input type="hidden" name="id" value="freeboard">

<div id="formTotal">
<div class="head_aticle" padding-left="10px">
	<h2 class="tit">자유게시판 </h2>
	<!-- <input type="hidden" id="pg" value="${pg }">  -->
</div>
<div id="totalDiv">
	<table id="freeboardListTable" style="width:100%" class="xans-board-listheader jh" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
	<tbody>

</tbody>
</table>
</div>
<div style="padding: 1px; border-top: 1px solid #e6e6e6"></div>
<div class="layout-pagination" style="font-size:12px;">
	<div class="pagediv">
		<a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a><a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a><strong class="layout-pagination-button layout-pagination-number __active">1</strong><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a><a href="list.php?id=notice&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a><a href="list.php?id=notice&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a><a href="list.php?id=notice&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a><a href="list.php?id=notice&amp;page=76" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
	</div>
</div>

<div id="totalSearch">
	<table class="xans-board-search xans-board-search2">
	
	<tbody>
	<tr>
		<td class="input_txt">
		
		<a href="/jaju/freeboard/freeboardWriteForm" id="memberWriteA" style="cursor: pointer;">
			<span id="memberWriteSpan">글쓰기</span>			
		</a>
		
		
		<br>
			<div class="search" style="float: right">
			
				<select name="itemcd" width="100px" >
					<option value="01">&nbsp;&nbsp;&nbsp;&nbsp;제목&nbsp;&nbsp;&nbsp;&nbsp;</option>
					<option value="02">&nbsp;&nbsp;&nbsp;&nbsp;내용&nbsp;&nbsp;&nbsp;&nbsp;</option>
				</select>
					<a style="cursor: pointer;"><img src="/jaju/jajuImage/search.png"></a>
				<input type="text" name="search[word]">
			</div>
		</td>
	</tr>
	</tbody>
	</table>
	<br>
</div>

</div>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/freeboardList.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#type1').addClass('on');
});
</script>

</body>
</html>