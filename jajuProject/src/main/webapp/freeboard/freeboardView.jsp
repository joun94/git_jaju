<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/freeboardView.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" id="board_seq" value="${board_seq }">
<div id="wrap">
<div id="pos_scroll"></div>
<div id="container" style="float:left; margin-left:40px; margin-top:-50px; width:800px;">

<div class="tit_page" style="width:800px; align:center;">
	<h1 class="tit" >자유게시판(임시)</h1>
</div>

<div id="main">
<div id="content">

<div id="qnb" class="quick-navigation" style="top: 70px;"></div>
<div class="layout-wrapper">
	<div class="xans-element- xans-myshop xans-myshop-couponserial ">
	
		<table class="xans-board-listheader" style="width:800px; align:center;" cellpadding="0" cellspacing="0">
			<tbody>
			<tr>
			<td>
			<table style="width:800px;">
			<tbody>
			<tr>
			<td>
		<table class="boardView" style="width:800px; font-size:14px;">
			<tbody>
				<tr>
					<th scope="row" style="border:none;">제목</th>
					<td colspan="5"> <span id="subjectSpan"></span></td>
				</tr>
				<tr  class="board_id" >
					<th scope="row">작성자</th>
					<td colspan="5" ><span id="idSpan"></span></td>
				</tr>
				<tr>
				<th scope="row">작성일</th>
					<td colspan="3"><span id="dateSpan"></span></td>
				<th scope="row">조회수</th>
					<td colspan="1"><span id="hitSpan"></span></td>	
				</tr>
				
			</tbody>
		</table>
			</td>
		</tr>
		<tr>
			<td align="right" class="eng" style="padding:5px;"></td>
		</tr>
			<tr>
			<td style="padding:10px;" height="200" valign="top" id="contents">
			<table width="100%" style="table-layout:fixed">
			
			<tbody>
			<tr>
			<td class="board_view_content" style="word-wrap:break-word;word-break:break-all" id="contents_924" valign="top">
			<div style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;">
			<font color="#222222" face="Font" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;">
				<span id="contentSpan"></span>
					<div id="imageDiv">
					
					</div>
			</font>
			</div>
			</td>
			</tr>
		</tbody>
		</table>
		</td>
		</tr>
		<tr><td height="1" bgcolor="#f4f4f4"></td></tr>
		</tbody></table><br>
		
		<table width="100%" style="table-layout:fixed" cellpadding="0" cellspacing="0">
		<tbody><tr>
		<td align="center" style="padding-top:10px;">
		
		<table width="100%">
		<tbody>
		
		<tr>
		<td align="left">
		<a href="/jaju/freeboard/freeboardModifyForm?board_seq=${param.board_seq }"><span class="bhs_button yb" style="float:none;">수정</span></a>
		</td>
		
		<td align="left">
		<a href="/jaju/freeboard/freeboardList"><span class="bhs_button yb" style="float:none;">삭제</span></a>
		</td>
		
		<td align="right">
		<a href="/jaju/freeboard/freeboardList"><span class="bhs_button yb" style="float:none;">목록</span></a>
		</td>
		</tr>
		
		</tbody></table>
		</td>
		</tr>
		</tbody></table>
		<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 " style="width: 800px;"><ul>
			<li class="prev">
				<strong>이전글</strong>
				<a href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="></a>
				<a href="view.php?id=notice&amp;no=922">아아아아아아아아아</a>
			</li>
			<li class="next">
				<strong>다음글</strong>
				<a href="/board/free/read.html?no=22443&amp;board_no=1&amp;page="></a>
				<a href="view.php?id=notice&amp;no=925">내일은 진짜 탈주한다</a>
			</li>
		</ul>
		</div>
		<br>
		<table width="100%" cellpadding="5" cellspacing="0">
			<colgroup>
				<col width="100" align="right" bgcolor="#f7f7f7" style="padding-right:10px">
				<col style="padding-left:10px">
			</colgroup>
		</table>
		<p>
		<br>
		<textarea id="examC_924" style="display:none;width:100%;height:300px"></textarea>
		</p>
		
		</td>
		</tr>
		</tbody>
		</table>
	</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/freeboardView.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#type1').addClass('on');
});
</script>
</body>
</body>
</html>