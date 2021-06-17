<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/mypage.css" />

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<!-- 가로메뉴바,세로메뉴바 고정 -->
	<!-- 프로필, 스크랩, 팔로우, 메세지 -->


	<div id="myPageTop" class="page_aticle mypage_top">
		<h2 class="screen_out">마이페이지</h2>
		<div class="mypagetop_user">
		
			<div class="inner_mypagetop">
				
				<div class="profile_image_div">
					  <img src="/jaju/jajuImage/unnamed.png" alt="프로필" class="profile_image">
					  <h2 class="name">안민지님</h2>
				</div>
					
				<div class="grade_user">
				
					<div class="grade_wrap">
						<div class="grade_logo class0">회원</div>
					</div>
					
					<div class="grade_bnenfit">
						<!---->
						<div class="benefit">
							<strong class="tit">닉네임</strong> 
						</div>
						<!---->
						<div class="benefit"></div>
					</div>
					
					<div class="next">
						<a href="" class="total_grade">
							판매중 : N개 </a> <a href="#" class="next_month"></a>
					</div>
					
				</div>
				
				<div class="list_mypage">
					<div class="list">
						
					<a href="/jaju/mypage/myDealRecord" class="link_wrap">
						<div class="link_title">거래내역<!----></div>
						<div class="spacer"></div>
					<p class="info">판매<span class="expire"> 판매내역 : 5개 </span></p>
					<p class="info">구매<span class="expire"> 구매내역 : 5개 </span></p>
					</a>
						
					<a href="/jaju/mypage/myScrap?pg=1" class="link_wrap">
						<div class="link_title">찜목록<!----></div>
						<div class="spacer"></div>
					<p class="info">1 개</p></a> 
					
					<!-- 팔로우 창은 window open으로 띄우기 -->	
					<a href="/jaju/mypage/myFollow?pg=1"	class="link_wrap">
						<div class="link_title">팔로우</div>
						<div class="spacer"></div>
					<p class="info">5 명</p></a> 
					
					<a href="#" class="link_wrap" onclick="javascript:messageMove()">
						<div class="link_title">쪽지</div>
						<div class="spacer"></div>
					<p class="info">8 개 <span class="expire"> 안읽은 쪽지 : 5개 </span></p></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
			<!-- 왼쪽의 마이페이지 리스트 
			<div class="snb">
				<h2>마이 페이지</h2>
				<ul class="all_category_item">
					<li><a class="" href="#">거래 내역</a></li>
					<li><a class="" href="#">관심 키워드 등록</a></li>
					<li><a class="" href="#">관심 지역 등록</a></li>
					<li><a class="" href="#">회원 정보 수정</a></li>
				</ul>-->
		<!-- 왼쪽 마이페이지 영역 -->
		<div class="page_aticle aticle_type2">
			<div id="snb" class="snb_cc">
				<h2 class="tit_snb">마이페이지</h2>
				
				<div class="inner_snb">
					<ul class="list_menu">
						<li>
							<a href="/jaju/mypage/myKeywordForm" onclick="">관심 키워드 등록</a>
						</li>
						<li>
							<a href="/jaju/mypage/myLocationForm" onclick="">관심 지역 등록</a>
						</li>
						<li>
							<a href="" onclick="">회원 정보 수정</a>
						</li>
						<li>
							<a href="/jaju/serviceCenter/reportList" onclick="">1:1 문의 내역</a>
						</li>
					</ul>
				</div>
				<a href="/jaju/serviceCenter/reportWriteForm" class="link_inquire">
				<span class="emph">도움이 필요하신가요?</span> 
				1:1	문의하기</a>	
			</div>
		
			</div>
<!-- 		<div class="container"></div>
 -->
 <script>
 
 function messageMove(){
	 //팝업 창 가운데 띄워주기
	 var popupWidth=500;
	 var popupHeight=500;

	 var popupX = (window.screen.width/2)-(popupWidth/2);
	 // 만들 팝업창 width 크기의 1/2 만큼 보정값으로 빼주었음

	 var popupY= (window.screen.height/2)-(popupHeight/2);
	 // 만들 팝업창 height 크기의 1/2 만큼 보정값으로 빼주었음

/* 	 window.open("/jaju/mypage/myMessage", 
			 "my_Message", 
			 "width=500 height=500 left=500 top=700 scrollbars=yes");  */
	
	window.open("/jaju/mypage/myMessage", 
			 "my_Message", 
			 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY); 
 
 }
 </script>
 
</body>
</html>