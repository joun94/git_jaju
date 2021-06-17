<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/jaju/css/serviceMenu.css" /> 
<link rel="stylesheet" href="/jaju/css/reportList.css" />
<jsp:include page="/serviceCenter/serviceMenu.jsp"/>

<input type="hidden" id="report_seq" name="report_seq" value="${report_seq}">
<input type="hidden" id="pg" name="pg" value="${pg}">	
<form id="reportList">
<div id="total">
	<div class="page_section section_qna">
		<div class="head_aticle">
			<h2 class="tit">신고 게시판</h2>
		</div>
		<div id="table">
			<table class="xans-board-listheader" style="width:100%">
				<tbody>
					<tr class="input_txt">
						<th width="8%">번호</th>
						<th width="20%">카테고리 </th>
						<th>제목</th>
						<th width="12%">작성자</th>
						<th width="12%">작성일</th>
						<th width="12%">처리상태</th>
					</tr>
				</tbody>
			</table>
		</div>
		

		<!--
		<div class="no_data" style="padding: 150px 0 148px; border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6; font-size: 14px; color: #4c4c4c; text-align: center;">
			신고 내역이 존재하지 않습니다.
		</div>
		-->

		<div class="no_data" style="border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6; font-size: 14px; color: #4c4c4c;">
			<table class="reportListTable" style="width:100%">
			
			</table>
		</div>
		
		<div style="position:relative">
			<div style="position:absolute;right:0;top:60px;">
				<a href="/jaju/serviceCenter/reportWriteForm">
					<span class="bhs_buttonsm yb" style="float:none;">글쓰기</span>
				</a>
			</div>
		</div>
		<div class="layout-pagination">
			<div class="pagediv"></div>
		</div>
		<br><br><br><br><br>
	</div>
</div>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/report.js"></script>	
<script type="text/javascript">
$(document).ready(function(){
	$('.service_center_item').addClass('on');
	$('#type4').addClass('on');
});
</script>
		
<script type="text/javascript">
function popup_register(mode, sno){
    if ( mode == 'del_qna' )  var win = window.open("../mypage/mypage_qna_del.php?mode=" + mode + "&sno=" + sno,"qna_register","width=400,height=200");
    else parent.location.href = ("../mypage/mypage_qna_register.php?mode=" + mode + "&sno=" + sno);

}

var preContent;

function view_content(obj)
{
    var div = obj.parentNode;

    for (var i=1, m=div.childNodes.length;i<m;i++) {
        if (div.childNodes[i].nodeType != 1) continue;	// text node.
        else if (obj == div.childNodes[ i ]) continue;

        obj = div.childNodes[ i ];
        break;
    }

    if (preContent && obj!=preContent){
        obj.style.display = "block";
        preContent.style.display = "none";
        preCheck = false
    }else if (preContent && obj==preContent){
        preContent.style.display = ( preContent.style.display == "none" ? "block" : "none" );
    }else if (preContent == null ){
        obj.style.display = "block";
    } 

    preContent = obj;

    if(preContent.style.display === 'block'){
        KurlyTracker.setScreenName('personal_inquiry_detail');
    }else{
        KurlyTracker.setScreenName('personal_inquiry_history');        
    }
}

</script>