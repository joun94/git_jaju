<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/myMessage.css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<div class="myMessageWrap">

	<div class="head_aticle">
		<h2 class="tit">상품문의</h2>
	</div>
	
	<div class="board-header-container">
		<ul class="list-description">
			<li>받은 쪽지함 입니다.</li>
		<!-- 	<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a
				href="/shop/mypage/mypage_qna.php">1:1 문의</a>에 남겨주세요.
			</li> -->
		</ul>
	</div>
	
	<div class="mainMessage">
	
		<div class="message_Btn">
			<span class="deleteBtn"><a href="#">&emsp;삭제&emsp;</a></span>
			<span class="sendBtn"><a href="#">&emsp;답장&emsp;</a></span>
		</div><!-- message_Btn -->
		
		<!--<div class="test">		</div>  test -->
		
			<div class="message_title">
				<div>보낸이</div>
				<div style="width: 520px;">내용</div>
				<div>작성일</div>
				<div>답변상태</div>
			</div>				
		
		<ul class="board-list">
			<li class="inquiry-empty">받은 쪽지가 없습니다.</li>
		</ul>
		
		<div class="board-inquiry-area">
			<div class="paging-navigation">
				<button type="button" class="paging-prev" >
					<span>이전</span>
				</button>
				<button type="button" class="paging-next">
					<span>다음</span>
				</button>
			</div>
		</div>
	</div><!-- mainMessage -->
</div><!-- myMessageWrap -->

</body>
</html>