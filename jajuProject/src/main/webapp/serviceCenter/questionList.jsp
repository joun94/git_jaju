<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/jaju/css/serviceMenu.css" /> 
<link rel="stylesheet" href="/jaju/css/question.css" />    
<jsp:include page="/serviceCenter/serviceMenu.jsp"/>
<div id="main">
	<div id="content">

<form name="frmList" id="form" method="get" action="?">
<div class="page_section">
<div id = "questionTotal">
	<div class="head_aticle">
		<h2 class="tit" style="font-size: 31px;">자주하는 질문
			<div class="search_date">
			<a href="#none" class="btn_layer on">선택</a>
				<ul class="layer_search">
					<li>
						<a href="#none" @click="searchResult" data-value="01">계정/인증</a>
					</li>
					<li>
						<a href="#none" @click="searchResult" data-value="02">구매/판매</a>
					</li>
					<li>
						<a href="#none" @click="searchResult" data-value="03">서비스 이용 및 기타</a>
					</li>
				</ul>
			</div>
		 </h2>
	</div>
					
<div class="xans-element- xans-myshop xans-myshop-couponserial ">
	<table width="100%" class="xans-board-listheader">
		<tbody>
			<tr>
				<th width="70" class="input_txt">번호</th>
				<th width="135" class="input_txt">카테고리</th>
				<th class="input_txt">제목</th>
			</tr>
		</tbody>
	</table>
	<div style="width: 800px;">
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_7">
				<tbody>
					<tr>
						<td width="70" align="center">61</td>
						<td width="135" align="center">회원문의</td>
						<td style="cursor: pointer">아이디와 비밀번호가 생각나지 않아요. 어떻게 찾을
							수 있나요?</td>
					</tr>
				</tbody>
			</table>
			<div 
				style="display: none; padding: 30px; border-top: 1px solid rgb(230, 230, 230);">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>(PC) 오른쪽 위의 [로그인] &gt; 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
								<br> (모바일) 아래 탭에서 [마이컬리] &gt; 로그인 화면 아래 [아이디 찾기] [비밀번호
								찾기]<br> <br> <br> 를 통해 확인이 가능하며, 임시 비밀번호의 경우
								회원가입시 등록하신 메일로 발송이 됩니다.<br> <br> <br> 가입시
								기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우, <br> <br>
								고객행복센터(1644-1107) 또는 카카오톡으로 문의 주시면 신속하게 도움 드리겠습니다.<br>
								<br> <br> 상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던 비밀번호는
								안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_31">
				<tbody>
					<tr>
						<td width="70" align="center">60</td>
						<td width="135" align="center">주문/결제</td>
						<td style="cursor: pointer">(샛별배송) 어제 주문했는데 오늘 아침에 배송이 안
							됐어요. 왜 그런가요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>샛별배송은 밤 11시 이후 주문건은 다다음날 새벽에 배송됩니다.<br> <br>
								<br> (PC) 홈페이지 상단 고객님 성함 (마이컬리) &gt; 나의 주문내역 &gt;
								주문내역상세<br> <br> (모바일) 마이컬리 &gt; 주문 내역 &gt; 주문내역상세<br>
								<br> 에서 결제완료시간을 확인해주세요. <br> <br> <br>
								밤 11시 이전 결제 건임에도 불구하고 배송이 안 되었을 경우, 고객센터 (1644-1107) 또는 1:1
								문의에 문의 남겨주세요.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_89">
				<tbody>
					<tr>
						<td width="70" align="center">59</td>
						<td width="135" align="center">배송문의</td>
						<td style="cursor: pointer">묶음 배송이 가능한가요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>컬리에서는 주문번호 별로 포장이 되며 주문번호 별로 배송비가 발생합니다. <br>
								<br> 묶음배송과 배송비절약을 원하실 경우, 주문 전체취소 후 한 꺼번에 재주문 하셔야합니다.<br>
								<br> (참고: 품절된 상품은 구매가 어려울 수 있습니다.)
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_97">
				<tbody>
					<tr>
						<td width="70" align="center">58</td>
						<td width="135" align="center">취소/교환/반품</td>
						<td style="cursor: pointer">교환 또는 반품신청 시에 사진을 첨부해야 하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>상품의 하자 등의 사유로 교환 또는 반품을 신청하시는 경우, 1:1 문의 또는 카카오톡
								문의에 해당 사항을 확인할 수 있는 사진 첨부를 부탁드립니다. <br> <br> <br>
								구매하신 상품의 문제 상황을 확인할 수 있는 당시의 상세한 사진일 수록, 보다 신속하고 정확한 안내를
								받으실수 있습니다. <br> <br> <br> 고객님의 소중한 말씀과 사진은
								해당 담당부서로 공유되며, 이를 바탕으로 더 나은 품질의 상품으로 제공드리도록 하겠습니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_101">
				<tbody>
					<tr>
						<td width="70" align="center">57</td>
						<td width="135" align="center">쿠폰/적립금</td>
						<td style="cursor: pointer">적립금 유효기간은 어떻게 확인하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>적립금의 유효기간은 아래 페이지에서 확인하실 수 있습니다.<br> <br>
								<br> (PC) 홈페이지 상단 고객님 성함 (마이컬리) &gt; 나의 적립금<br> <br>
								(모바일) 마이컬리 &gt; 적립금<br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_109">
				<tbody>
					<tr>
						<td width="70" align="center">56</td>
						<td width="135" align="center">서비스 이용 및 기타</td>
						<td style="cursor: pointer">장바구니 상품은 언제까지 보관이 되나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>장바구니 상품은 최대 90일간 저장됩니다. <br> <br> 90일동안
								구매하지 않는다면, 해당 상품은 장바구니에서 소멸되오니, 이용에 참고 부탁드립니다. <br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_13">
				<tbody>
					<tr>
						<td width="70" align="center">55</td>
						<td width="135" align="center">회원문의</td>
						<td style="cursor: pointer"> 주문하지 않았는데, 주문완료 메시지 또는 배송완료 메시지를 받았습니다. </td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>상품을 주문하신 고객님이 핸드폰 번호를 잘못 입력하시어 <br> <br>
								주문하지 않은 고객님께 문자가 발송되는 경우가 있으며,<br> <br> <br>
								지인분께서 고객님께 선물하실 경우에는 수령자 번호로 배송완료 메세지가 발송되므로 선물배송일 가능성도
								있습니다.<br> <br> <br> 자세한 사항은
								고객행복센터(1644-1107)로 연락주시거나 [1:1문의] 또는 [카카오톡] 으로 문의바랍니다.<br>
								<br> (PC) 홈페이지 하단 [1:1문의]<br> <br> (모바일)
								마이컬리 &gt; 1:1 문의 또는 마이컬리 &gt; 고객센터 &gt; 카카오톡 문의
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_18">
				<tbody>
					<tr>
						<td width="70" align="center">54</td>
						<td width="135" align="center">취소/교환/반품</td>
						<td style="cursor: pointer">상품을 반품했는데 아직 카드취소가 되지 않았어요. 어떻게 된 건가요? </td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>카드환불의 경우 카드사 사정에 따라 환불 접수일로 부터 영업일 기준 3~7일 정도 소요될 수
								있습니다. <br> <br> (취소완료시 카드사에서 안내드리는 SMS는 고객님의 수신
								설정여부에 따라 미수신 될 수 있습니다)<br> <br> 자세한 사항은 카드사에 문의
								부탁드리며, 7일 이후에도 환불이 되지 않은 경우 1:1문의로 문의 부탁드립니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_56">
				<tbody>
					<tr>
						<td width="70" align="center">53</td>
						<td width="135" align="center">서비스 이용 및 기타</td>
						<td style="cursor: pointer">내가 주문한 내역은 어떻게 확인하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>1. 컬리 회원이신 경우<br> <br> <br> 로그인 후,<br>
								<br> (PC) 홈페이지 상단 고객님 성함 (마이컬리) &gt; 나의 주문내역<br>
								<br> (모바일) 마이컬리 &gt; 주문내역<br> <br> 에서 해당
								주문번호를 눌러 확인 가능합니다.<br> <br> <br> <br> <br>
								2. 비회원이신 경우<br> <br> <br> 비회원 주문확인 및 배송 조회는
								모바일 앱과 웹, 혹은 고객센터 (1644-1107)에서 가능합니다.<br> <br>
								(모바일 앱) 마이컬리 &gt; 비회원 주문 조회, <br> <br> (모바일 웹)
								로그인 화면에서 비회원 탭을 누른 후 주문자명, 주문번호를 입력하여 조회하시면 됩니다.<br> <br>
								(PC) 조회 불가합니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_82">
				<tbody>
					<tr>
						<td width="70" align="center">52</td>
						<td width="135" align="center">배송문의</td>
						<td style="cursor: pointer">주문 후 주문정보(배송지, 메모, 출입방법 등)변경하려고 하는데 어떻게 해야하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>주문 정보 변경은 고객행복센터(1644-1107)로 연락주시거나 [1:1문의] 또는
								[카카오톡] 에 문의 부탁드립니다. <br> <br> 배송단계별 주문서 상태값에 따라,
								가능 여부가 달라지는 점 참고 부탁드립니다. <br> ○ [입금확인], [상품준비중] 단계 -
								가능 <br> ○ [배송준비중], [배송중] 단계 - 제한 <br> <br> -
								생산이 시작된 [상품 준비중] 이후 단계에는 주문 정보 변경이 제한되는 점 고객님의 양해 부탁드립니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_95">
				<tbody>
					<tr>
						<td width="70" align="center">51</td>
						<td width="135" align="center">쿠폰/적립금</td>
						<td style="cursor: pointer">적립금은 유효기간이 있나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>2018년 4월 1일 이후 새로운 적립금 시스템 도입으로 도입 이후 적립된 금액은 유효기간
								적용이 됩니다. <br> <br> <br> - 유효기간: 발급일로부터 12개월<br>
								<br> - 소멸기간: 지급일 부터 1년이 지난 적립금은 매 분기 말일 (3월 31일, 6월
								30일, 9월 30일, 12월 31일) 에 소멸됩니다.<br> <br> <br>
								<br> * 적립금은 자동으로 유효기간이 적게 남은 금액부터 사용됩니다.<br> <br>
								* 주문시 받으신 적립금은 주문취소 및 환불 시 차감됩니다. <br> <br> * 잔여
								적립금이 부족한 경우, 결제하신 금액에서 공제한 후 환불해드립니다.<br> <br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_98">
				<tbody>
					<tr>
						<td width="70" align="center">50</td>
						<td width="135" align="center">주문/결제</td>
						<td style="cursor: pointer">(회원) 쿠폰 적용은 어떻게 하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>주문서에서 [4. 결제금액] 섹션 중 쿠폰칸을 눌러 조회하신 후 [확인] 버튼을 눌러 적용할
								수 있습니다. <br> <br> 한 주문건에 적립금과 쿠폰은 동시에 사용할 수 없으며 한
								주문건에 쿠폰은 한 장만 사용가능합니다. <br> <br> 쿠폰별로 사용법 및 조건이
								다를 수 있으니, 사용법 문의는 1:1 문의에 남겨주세요.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_26">
				<tbody>
					<tr>
						<td width="70" align="center">49</td>
						<td width="135" align="center">주문/결제</td>
						<td style="cursor: pointer">(회원) 적립금 적용은 어떻게 하나요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>주문서에서 [4. 결제금액] 섹션 중 적립금 칸에 1원 단위로 적용이 가능합니다. <br>
								<br> 보유 적립금 확인 후, 원하시는 금액 입력을 해주세요. <br> <br>
								한 주문건에 적립금과 쿠폰은 동시에 사용할 수 없습니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_49">
				<tbody>
					<tr>
						<td width="70" align="center">48</td>
						<td width="135" align="center">쿠폰/적립금</td>
						<td style="cursor: pointer">주문취소/반품 후 사용했던 적립금/쿠폰은 재사용 가능한가요?</td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>주문 취소하신 경우 쿠폰 또는 적립금은 자동으로 복원됩니다. <br> <br>
								구매로 인해 적립된 구매적립금은 차감됩니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_62">
				<tbody>
					<tr>
						<td width="70" align="center">47</td>
						<td width="135" align="center">배송문의</td>
						<td style="cursor: pointer">(샛별배송) 현관, 경비실 앞에 배송이 되었어요. </td>
					</tr>
				</tbody>
			</table>
			<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr valign="top">
							<th style="color: #0000bf; width: 40px; padding-top: 1px;">
								<img src="/jaju/jajuImage/a.png" style="width: 25px; margin-top: -5px;">
							</th>
							<td>샛별배송은 택배배송과 다르게 새벽에 배송이 되기 때문에, 분실/도난 등의 가능성을 최소화하기
								위해 고객님 자택 앞까지 배송하고 있습니다. <br> <br> 다만, 아래와 같이
								공동현관 출입 또는 자택 앞으로 배송할 수 없는 경우, <br> <br> 최대한 상품을
								안전하게 배송드리고자 공동현관 앞 또는 경비실 앞으로 대응배송이 될 수 있습니다. <br> <br>
								<br> 예: <br> (1) 카드키로만 출입이 가능한 공동현관<br> <br>
								(2) 경비실을 통해 출입해야하는 공동현관 (경비부재시 출입불가) <br> <br>
								(3) 새벽시간에 건물의 공동현관을 폐쇄할 경우<br> <br> <br> <br>
								관련하여 문의가 있으신 경우, 컬리의 고객행복센터 (1644-1107) 또는 카카오톡, 1:1문의로
								접수바랍니다.<br> <br> 담당자 신속하게 안내드리도록 하겠습니다.
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div style="padding: 1px; border-top: 1px solid #e6e6e6"></div>
				<div class="layout-pagination">
					<div class="pagediv">
						<a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a><a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a><strong class="layout-pagination-button layout-pagination-number __active">1</strong><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a><a href="list.php?id=notice&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a><a href="list.php?id=notice&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a><a href="list.php?id=notice&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a><a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a><a href="list.php?id=notice&amp;page=76" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
					</div>
				</div>
				<table class="xans-board-search xans-board-search2">
					<tbody>
						<tr>
							<td class="input_txt">&nbsp;</td>
							<td>
							<br>
								<div class="search_bt">
									<input type="image" src="/jaju/jajuImage/search.png">
									<input type="text" name="sword">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
		</div>
	</form>
</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	
	$('#type2').addClass('on');
});
</script>

<script>
	var $targetBtn = $('.search_date .btn_layer');
	var $targetLayer = $('.search_date .layer_search');
	var $targetSelector = $('.layer_search a');

	$targetSelector.each(function() {
		if ($(this).data('selected')) {
			$targetBtn.text($(this).data('selected'));
		}
	});
	$targetBtn.on('click', function(e) {
		e.preventDefault();
		$(this).toggleClass('on');
		$targetLayer.slideToggle(100);
	});
	$targetSelector.on('click', function(e) {
		e.preventDefault();
		var value = $(this).data('value');
		var text = $(this).text();
		$targetBtn.trigger('click').text(text);
		$('[name=sitemcd]').val(value);
		$('[name=frmList]').submit();
	});
</script>
<script>
var preContent;

function view_content(obj) {
	var div = obj.parentNode;

	for (var i = 1, m = div.childNodes.length; i < m; i++) {
		if (div.childNodes[i].nodeType != 1)
			continue; // text node.
		else if (obj == div.childNodes[i])
			continue;

		obj = div.childNodes[i];
		break;
	}

	if (preContent && obj != preContent) {
		obj.style.display = "block";
		preContent.style.display = "none";
	} else if (preContent && obj == preContent)
		preContent.style.display = (preContent.style.display == "none" ? "block"
				: "none");
	else if (preContent == null)
		obj.style.display = "block";

	preContent = obj;
}

{ // 초기출력
	var no = "faq_";
	if (document.getElementById(no))
		view_content(document.getElementById(no));
}
</script>