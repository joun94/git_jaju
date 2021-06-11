<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/myScrap.css" />
<link rel="stylesheet" href="../css/test_index.css">

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>
<!-- 찜목록 -->
	<div class="head_aticle">
		<h2 class="tit">&emsp;찜목록</h2>
	</div>

	<div class="board-header-container">
		<ul class="list-description">
			<li>사진을 누르면 해당 페이지로 이동합니다.</li>
		</ul>
	</div>
	
		<!-- 스크랩 jquery이용해서 each로 받아온 사진 뿌리기. 형태만 잡기 -->
      <div class="row">
      <!-- 사람이미지. -->
        <div class="col-xs-12 col-md-4">
          <img src="/jaju/used_product/hat.jpg" alt="찜리스트" class="reveal img-responsive reveal-content image-center">
        </div>
       
        <div class="col-xs-12 col-md-4">
          <img src="/jaju/used_product/hat.jpg" alt="" class="reveal img-responsive reveal-content image-center">
        </div>
        
        <div class="col-xs-12 col-md-4">
          <img src="/jaju/used_product/hat.jpg" alt="" class="reveal img-responsive reveal-content image-center">
        </div>
        
      </div>
		
		
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script src="/jaju/js/myScrap.js"></script>
		
</body>
</html>