<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/jaju/css/login.css" />
</head>
<body>
<div id="content">
	<div class="section_login">
		<h3 class="tit_login">로그인</h3>
		<div class="write_form">
			<div class="write_view login_view">
				<form method="post" name="form" id="form">
					<input type="text" name="member_id" id="member_id" size="20" tabindex="1" value="" placeholder="아이디를 입력해주세요">
					<div id="idDiv"></div>
					<input type="password" name="member_pwd" id="member_pwd" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
					<div id="pwdDiv"></div>
					<div class="checkbox_save">
						<label class="label_checkbox checked">
							<input type="checkbox" id="chk_save" name="chk_save" value="y" checked="checked" onchange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')} ">
							아이디 저장
						</label>
						
						<div class="login_search">
							<a href="/shop/member/find_id.php" class="link">아이디 찾기</a>
							<span class="bar"></span>
							<a href="/shop/member/find_pwd.php" class="link">비밀번호 찾기</a>
						</div>
					</div>
					<button type="button" class="btn_type1" id="loginBtn"><span class="txt_type">로그인</span></button>
				</form>
				<a href="/jaju/member/writeForm" class="btn_type2 btn_member"><span class="txt_type">회원가입</span></a>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/jaju/js/login.js"></script>
</html>