<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link rel="stylesheet" href="/jaju/css/serviceMenu.css" /> 
<link rel="stylesheet" href="/jaju/css/inquireList.css" />    
<jsp:include page="/serviceCenter/serviceMenu.jsp"/>



<div class="page_section section_qna">

	<div class="head_aticle">
		<h2 class="tit">1:1 문의</h2>
	</div>
	<input type = "hidden" name="pg" id = "pg" value = "${param.pg }">
	<div class="table">
	<table class="xans-board-listheader"width="100%">
		<tbody>
			<tr class="input_txt">
				<th width="5%">번호</th>
				<th width="15%">카테고리</th>
				<th>제목</th>
				<th width="12%">작성자</th>
				<th width="12%">작성일</th>
				<th width="12%">처리상태</th>
			</tr>
		</tbody>
	</table>
	
	<table class = "inquireTable" id = "inquireTable" width="100%" style="border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6;"></table>

	<div class="no_data" id = "no_data"
		style="padding: 150px 0 148px; border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6; font-size: 14px; color: #4c4c4c; text-align: center;">
		1:1 문의 내역이 존재하지 않습니다.</div>
	

	<div style="position: relative">
		<div style="position: absolute; right: 0; top: 15px;">
			<a href="/jaju/serviceCenter/inquireWriteForm"><span
				class="bhs_buttonsm yb" style="float: none;">글쓰기</span></a>
		</div>
	</div>
	</div>
	<div class="layout-pagination">
		<div class="pagediv"></div>
	</div>

</div>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/inquireList.js"></script>
