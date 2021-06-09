<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bx-controls-direction {
	    position: relative;
	    width: 1080px;
	    margin: 0 auto;
    }
    
    .bx-controls-direction .bx-prev {
	    left: -20px;
	    background: url(https://res.kurly.com/pc/service/main/1908/btn_prev_default.png?v=1) no-repeat 50% 50%;
	    transition: background 0.5s;
	}
	
	.bx-controls-direction .bx-next {
	    right: -30px;
	    background: url(https://res.kurly.com/pc/service/main/1908/btn_next_gray_x1.png?v=1) no-repeat 50% 50%;
	    transition: background 0.5s;
	}
	
	.bx-controls-direction .bx-next, .bx-controls-direction .bx-prev {
	    overflow: hidden;
	    position: absolute;
	    bottom: 290px;
	    width: 60px;
	    height: 60px;
	    border: 0 none;
	    font-size: 0;
	    line-height: 0;
	    text-indent: -9999px;
	    transition: opacity 0.5s;
	}
</style>
</head>
<body>
	<div align="center"> <!-- 전체 div -->
		<div>	<!-- 타이틀 div -->
			<h2>
				<a>
					<span>오늘의 추천 매물</span>
				</a>
			</h2>
		</div>
		
		<div>
			<div style="max-width: 1100px; margin: 0px auto;">
				<div style="width: 100%; overflow: hidden; position: relative; height: 506px;">
					<ul style="width: 815%; position: relative;">
						<li style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
							<a><img src="/jaju/image/item1.jpg" alt="상품이미지" width="250" height="320"></a> 
							<div>
								<span>
									<a>item1</a>
								</span>
							</div>
						</li>
						
						<li style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
							<a><img src="/jaju/image/item2.png" alt="상품이미지" width="250" height="320"></a> 
							<div>
								<span>
									<a>item2</a>
								</span>
							</div>
						</li>
						
						<li style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
							<a><img src="/jaju/image/item3.jpg" alt="상품이미지" width="250" height="320"></a> 
							<div>
								<span>
									<a>item3</a>
								</span>
							</div>
						</li>
						
						<li style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
							<a><img src="/jaju/image/item4.jpg" alt="상품이미지" width="250" height="320"></a> 
							<div>
								<span>
									<a>item4</a>
								</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="bx-controls bx-has-controls-direction">
				<div class="bx-controls-direction">
					<a class="bx-prev disabled" href="">Prev</a>
					<a class="bx-next" href="">Next</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>