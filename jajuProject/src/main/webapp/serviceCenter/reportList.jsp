<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/reportList.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="content">
	<script>
	    var brnQuick = {
	        nowTime : '1623319407340',
	        update : function(){
	            $.ajax({
	                url : campaginUrl + 'pc/service/bnr_quick.html'
	            }).done(function(result){
	                $('#brnQuick').html(result);
	            });    
	        }
	    }
	    brnQuick.update();
	</script>
</div>
	
<div id="total">
	<div class="page_aticle aticle_type2">
		<div id="snb" class="snb_cc">
		
		<div class="page_section section_qna">
			<div class="head_aticle">
				<h2 class="tit">신고게시판</h2>
			</div>
			<div id="table">
				<table class="xans-board-listheader" width="100%">
					<tbody>
					<tr class="input_txt">
					<th width="8%">번호</th>
					<th width="15%">카테고리 </th>
					<th>제목</th>
					<th width="12%">작성자</th>
					<th width="12%">작성일</th>
					<th width="12%">처리상태</th>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="no_data" style="padding:150px 0 148px; border-top:1px solid #e6e6e6;border-bottom:1px solid #e6e6e6;font-size:12px;color:#4c4c4c">
			1:1 문의 내역이 존재하지 않습니다.
			</div>
			<div style="position:relative">
				<div style="position:absolute;right:0;top:60px;">
					<a href="javascript:popup_register( 'add_qna' );">
						<span class="bhs_buttonsm yb" style="float:none;">글쓰기</span>
					</a>
				</div>
			</div>
			<div class="layout-pagination">
				<div class="pagediv"></div>
			</div>
		</div>
		</div>
	</div>
</div>
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

// KM-1483 Amplitude 연동
KurlyTracker.setScreenName('personal_inquiry_history');
</script>
</body>
</html>