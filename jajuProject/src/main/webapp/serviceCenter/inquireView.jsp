<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/reportView.css" />
<jsp:include page="/serviceCenter/serviceMenu.jsp"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<input type="hidden" name="seq" id = "inquiry_seq" value= "${param.seq}">
<input type="hidden" name="pg" value="${param.pg}">
<form id = "inquireView">

<div id="wrap">
<div id="pos_scroll"></div>
<div id="container" style="float:left; margin-left:40px; margin-top:-50px; width:800px;">

<div class="tit_page" style="width:800px; align:center;">
	<h1 class="tit" >신고 게시판</h1>
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
				<table class="boardView" width="100%;">
				<tbody>
				<tr  style="border-top: 2px solid #47597e;">
					<th scope="row" style="border:none;">제목</th>
					<td><span id = "inquiry_subject"></span></td>
				</tr>
				
				<tr>
					<th scope="row">작성자</th>
					<td><span id = "inquiry_id"></span></td>
				</tr>
				
				<tr class="etcArea">
					<td colspan="2">
					<ul>
					<li class="tpye ">
						<strong class="th">전화번호</strong>
						<span class="td" id = "inquiry_telephone"></span>
					</li>
					<li class="date ">
						<strong class="th">작성일</strong> 
						 <span class="td" id = "logtime"></span>
					</li>
					</ul>
					</td>
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
			<span id = "inquiry_contents"></span>
			</td>
			
		<tr>
			<td height="1" bgcolor="#f4f4f4"></td>
		</tr>
		</tbody>
		</table>
		<br>
		
		<table width="100%" style="table-layout:fixed" cellpadding="0" cellspacing="0">
		<tbody>
		<tr>
		<td align="center" style="padding-top:10px;">
		
		<table width="100%">
			<tbody>
				<tr>
					<td align="right">
						<a href="/jaju/serviceCenter/reportModifyForm">
							<span class="reportBtn modify" style="float:none;">수정</span>
						</a>
						<a href="/jaju/serviceCenter/inquireList">
							<span class="reportBtn delete" style="float:none;">삭제</span>
						</a>
						<a href="/jaju/serviceCenter/inquireList">
							<span class="reportBtn list" style="float:none;">목록</span>
						</a>
					</td>
				</tr>
			</tbody>
		</table>
		</td>
		</tr>
		</tbody></table>
		<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 " style="width: 800px;"><ul>
			<li class="prev">
				<strong>이전글</strong>
				<a href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="></a>
				<a href="view.php?id=notice&amp;no=922">군복 및 군용장구의 거래는 법률로 금지되어 있습니다. 사지도 팔지도 맙시다.</a>
			</li>
			<li class="next">
				<strong>다음글</strong>
				<a href="/board/free/read.html?no=22443&amp;board_no=1&amp;page="></a>
				<a href="view.php?id=notice&amp;no=925">자주마켓 개인정보처리방침 개정 안내</a>
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
</form>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/inquireView.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#type4').addClass('on');
});
</script>
</body>
</html>