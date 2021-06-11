<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/mypage.css" />
<link rel="stylesheet" href="/jaju/css/myKeyword.css" />

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<!-- 가로메뉴바,세로메뉴바 고정 -->
	<!-- 프로필, 스크랩, 팔로우, 메세지 -->

<jsp:include page="/main/header.jsp" />

<div id="myPageTop" class="page_aticle mypage_top">
	<h2 class="screen_out">마이페이지</h2>
	<div class="mypagetop_user">
		<div class="inner_mypagetop">
			<div class="grade_user">
				<div class="grade_wrap">
					<div class="grade_logo class0">회원</div>
					<strong class="name">안민지님</strong>
				</div>
				<div class="grade_bnenfit">
					<!---->
					<div class="benefit">
						<strong class="tit"> </strong> 닉네임
					</div>
					<!---->
					<div class="benefit"></div>
				</div>
				<div class="next">
					<a href="" class="total_grade">
						매너온도 36.5 </a> <a href="#" class="next_month"></a>
				</div>
			</div>
			
			<div class="list_mypage">
				<div class="list">
					
				<a href="" class="link_wrap">
					<div class="link_title">거래횟수<!---->
						<img src=""	alt="" class="arrow_right"></div>
					<div class="spacer"></div>
				<p class="info">51 건 <span class="expire"> 판매중 : 5개 </span>
				</p></a>
					
				<a href="/jaju/mypage/myScrap" class="link_wrap">
					<div class="link_title">찜목록<!---->						
						<img src="" alt="" class="arrow_right">
					</div>
					<div class="spacer"></div>
				<p class="info">1 개</p></a> 
				
				<!-- 팔로우 창은 window open으로 띄우기 -->	
				<a href="/jaju/mypage/myFollow"	onclick="" class="link_wrap">
					<div class="link_title">팔로우 
						<img src="" alt="" class="arrow_right">			
					</div>
					<div class="spacer"></div>
				<p class="info">팔로우 리스트</p></a> 
				
				<a href="/jaju/mypage/myMessage" class="link_wrap">
					<div class="link_title">쪽지
						<img src=""	alt="" class="arrow_right">
					</div>
					<div class="spacer"></div>
				<p class="info">쪽지 리스트</p></a>
				</div>
				<!---->
			</div>
		</div>

	</div>
</div>

	<div class="container">
		<!-- 왼쪽의 마이페이지 리스트 
		<div class="snb">
			<h2>마이 페이지</h2>
			<ul class="all_category_item">
				<li><a class="" href="#">거래 내역</a></li>
				<li><a class="" href="#">관심 키워드 등록</a></li>
				<li><a class="" href="#">관심 지역 등록</a></li>
				<li><a class="" href="#">회원 정보 수정</a></li>
			</ul>-->
		<div class="page_aticle aticle_type2">
		
		<div id="snb" class="snb_cc">
			<h2 class="tit_snb">마이페이지</h2>
			
			<div class="inner_snb">
				<ul class="list_menu">

					<li>
						<a href="/jaju/mypage/myKeyword" onclick="">관심 키워드 등록</a>
					</li>
					<li>
						<a href="/jaju/mypage/myLocation" onclick="">관심 지역 등록</a>
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
		<!-- 테스트용인클루드 -->
		<jsp:include page="/mypage/myKeywordForm.jsp" />
	</div>
</div>

		<div id="footer">
			<jsp:include page="/main/footer.jsp" />
		</div>	


</body>
</html>