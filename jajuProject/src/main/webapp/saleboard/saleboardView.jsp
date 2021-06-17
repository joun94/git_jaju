<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/saleboardView.css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
</head>
<body>

	<div class="section_view">
		<div id="sectionView">
			<div class="inner_view">
				<div class="thumb">
					<img
						src="/jaju/jajuImage/4.jpg"
						alt="상품 대표 이미지" class="bg">
				</div>
				<div class="subjectDiv">
					<p class="goods_name">
						<strong class="name">[급처분] 내 박살내서 뇌수가 줄줄흐르는 머리 팝니다~</strong><span class="short_desc"></span>
					</p>
					<p class="goods_price">
						<span class="position"><span class="dc">
								<!----> <span class="dc_price">10<span class="won">원</span></span><br>
								<span id="sale_nego"></span>
						</span></span>
						
					</p>
				</div>
				<div class="goods_info">
					<!---->
					<dl class="list" id="member_id">
						<dt class="tit" ><img alt="프로필" src="/jaju/jajuImage/춘시기.jpg" style="width: 50px; height: 50px;"><br> 대충 판매자 이름</dt>
						<dd class="desc"><br>대충 매너온도인것 같다</dd>
					</dl>
					<dl class="list" id="sale_condition">
						<dt class="tit">상품 상태</dt>
						<dd class="desc">박살나서 재사용 불가능</dd>
					</dl>
					<dl class="list" id="howTrade">
						<dt class="tit">거래방법</dt>
						<!---->
						<dd class="desc">직거래/택배거래</dd>
					</dl>
					<dl class="list" id="member_sido">
						<dt class="tit">거래지역</dt>
						<dd class="desc">경기도 인천시</dd>
					</dl>
					<dl class="list" id="sale_date">
						<dt class="tit">올린 날자</dt>
						<dd class="desc">1666-06-06</dd>
					</dl>
					<dl class="list" id="sale_state">
						<dt class="tit">현재 상태</dt>
						<dd class="desc">판매중</dd>
					</dl>
					<!---->
				</div>
				<!---->
			</div>
		</div>
		<div id="cartPut">
			<div class="cart_option cartList cart_type2">
				<div class="inner_option">					
					<div class="group_btn off">
						<!-- 찜 자리 -->
						<i class="far fa-heart fa-2x" id="scrapImg"></i>
						<span class="btn_type1">
							<button type="button"class="txt_type">쪽지 보내기</button> <!---->
						</span>
						<!---->
						<!---->
						<!---->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="imageDiv">
			
	</div>
	<div id="contentDiv" >
		<pre><span id="contentSpan" >머리가 안돌아가~~ 내 머리는 어디에 있는 거지? 내 머리 위에 있는 건 맞는 건가?
아아 내 목위에 있는건 대가리가 아니라 장식품이구나~~~~
크아아아아아아아아아아아아아앙아아아아아아아아아아아아아아아아아아아아아아아아아아아아아아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
ㄴㅇ마러나ㅣㅁ어라sdkjdksajflksdafㄴㅇ미ㅏ러니마어라ㅣㄴㅇ멀
ㄴㅇㄹ ㄴ아ㅣ로lsdaj
sdfsdjfskladjfw
s린ㅇ머핮ㅂ다덩ㅊ'ㄴㅇ	
</span></pre>
	</div>
	
	<!-- 댓글 -->
	<div id="commentDiv">
		<table id="commentTable" >
			<tr>
				<th width="200">번호</th>
				<th width="400">내용</th>
				<th width="200">작성자</th>
				<th width="200">작성일</th>
			</tr>
			<tr>
				<td >18</td>
				<td style="text-align: left;">이제 정말 끝이라고 해줘 제발~!!!!!!</td>
				<td >나요</td>
				<td >2016-06-10</td>
			</tr>
			<tr>
				<td >28</td>
				<td style="text-align: left;">끝내 달라고 했더니 제 머리가 끝났습니다.</td>
				<td >저요</td>
				<td >2016-06-10</td>
			</tr>
		</table>
		
		<table border="2" id=c cellspacing="0" cellpadding="10"
         bordercolor="#d6e6f2" align="center" frame="hsides" rules="rows"
         width="1050" id="commentWriteTable">
         <tr>
            <td height="80" width="150" align="center">댓글: <span id="replySpan"></span>
               <input type="text" placeholder="댓글을 입력하세요." size="100" id="commentText" class="commentInput">
               <input type="button" value="댓글 입력" class="commentInput" size="200" >
            </td>
         </tr>
      </table>
	</div>
	
	
	<div id="memberreportDiv">
		<a id="memberreportA" style="cursor: pointer;">
			<span id="memberreportSpan">이 게시글 신고하기</span>
			
		</a>
		<a href="/jaju/saleboard/saleboardModifyForm?sale_seq=${param.sale_seq }" id="memberModifyA" style="cursor: pointer;">
			<span id="memberModifySpan">이 게시글 수정하기</span>			
		</a>
		
		<input type="button" value="삭제" id="saleboardDeleteBtn">		
		
	</div>

	
		


	<input type="hidden" id="sale_seq" value="${param.sale_seq }"/>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/jaju/js/saleboardView.js"></script>	
<script src="/jaju/js/saleboardDelete.js"></script>

</body>
</html>