<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Index</title>
<link rel="stylesheet" href="/jaju/css/header.css" />
<link rel="stylesheet" href="/jaju/css/body.css" />
<link rel="stylesheet" href="/jaju/css/footer.css" />

<style type="text/css">

#wrap{
align-content: center;
}
</style>
</head>

<body>

<div id="wrap">
	<!-- 상단 -->
	<div align="center" id="indexHeader">
		<jsp:include page="/main/header.jsp" />
	</div>

	<!-- 메인 -->
	<div id="container">
		<div id="nav">
			<jsp:include page="/main/body.jsp" />
		</div>	
		
		
		
		<div id="section1">
		
			<jsp:include page="/mypage/mypageMain.jsp" />
		
			<c:if test="${not empty display}">
				<jsp:include page="${display}" />
			</c:if>
		</div>
	</div><!-- //메인 -->

	<!-- 하단 -->		
		<div id="footer">
			<jsp:include page="/main/footer.jsp" />
		</div>		
	</div>

</body>
</html>