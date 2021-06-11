<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/jaju/css/reportWriteForm.css" />

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="page_section section_qna">
<div class="head_aticle">
<h2 class="tit">신고게시판</h2>
</div>

<div class="xans-board-write">
<form name="fm" id="fm" method="post" action="/shop/mypage/indb.php" enctype="multipart/form-data" onsubmit="return chkForm(this)" style="height: 100%;">
	<input type="hidden" name="mode" value="add_qna">
	<input type="hidden" name="itemcd">
	<input type="hidden" name="sno" value="0">
<table id="table_after" class="boardWrite2" width="100%">
<colgroup><col width="14%" align="right"></colgroup>
<tbody>
<tr>
	<th class="input_txt">제목</th>
	<td>
		<select name="itemcd" label="신고 유형">
			<option value="">선택해주세요.</option>
			<option value="01">욕설, 비방, 차별, 혐오</option>
			<option value="02">홍보, 영리목적</option>
			<option value="03">음란, 청소년 유해</option>
			<option value="04">개인 정보 노출</option>
			<option value="05">유포, 거래</option>
			<option value="06">도배, 스팸</option>
			<option value="07">사기 신고</option>
			<option value="08">기타문의</option>
		</select>
		<br>
		<input type="text" name="subject" style="width:100%" label="제목">
	</td>
</tr>
<tr>
<th class="input_txt">신고글</th>
	<td>
		<input type="text" name="ordno" style="width:25%" value="" readonly="readonly" onclick="$(this).blur()" onfocus="$(this).blur()">
		<input onclick="order_open()" type="button" class="bhs_button yb" value="신고글조회" style="float:none; line-height:27px; width:100px;">
		<div style="position:relative;z-index:1">
			<iframe id="ifm_order" frameborder="0" scrolling="no" style="display:none;position:absolute;width:560px;height:380px;background-color:#fff;position:absolute;left:0;top:0;border:1px solid #000"></iframe>
		</div>
	</td>
</tr>
<tr>
<th class="input_txt">전화번호</th>
	<td>
		<input type="text" name="mobile[]" class="read_only">  &nbsp; - 없이 숫자를 기입해주세요
		<span class="noline smalle" style="padding-left:10px">
		</span>
	</td>
</tr>
<tr>
<th class="input_txt">내용</th>
<td class="edit_area" style="position: relative;">

<script>
var qnaNotice = new Vue({
    el: '#qnaNotice',
    data: {
        getData : null,
        layerOn : true
    },
    methods: {
        update:function(){
            var $self = this;
            $.ajax({
                type:'GET',
                url: campaginUrl + 'pc/notice/qna_info.html',
                datatype: 'html',
                async : true,
            }).done(function(result){
                $self.getData = result;
            });
        }
    }
});
$(document).ready(function(){
    qnaNotice.update();
});
</script>

<textarea name="contents" style="width:100%; height:474px; resize: none;" class="editing_area" label="내용"></textarea>
</td>
</tr>
<tr>
<th class="input_txt">이미지</th>
	<td>
		<table width="95%" id="table" cellpadding="0" cellspacing="0" border="0" style="border:solid 1px #f4f4f4; border-collapse:collapse;">
			<tbody>
			<tr id="tr_0">
				<td width="20" align="center">1</td>
				<td width="100%">
					<input type="file" name="file[]" style="width:50%" class="linebg">
				</td>
			</tr>
			<tr id="tr_1">
				<td width="20" align="center">2</td>
				<td width="100%">
					<input type="file" name="file[]" style="width:50%" class="linebg">
				</td>
			</tr>
			<tr id="tr_2">
				<td width="20" align="center">3</td>
				<td width="100%">
					<input type="file" name="file[]" style="width:50%" class="linebg">
				</td>
			</tr>
			</tbody>
		</table>
		<table>
			<tbody>
				<tr>
					<td height="2"></td>
				</tr>
			</tbody>
		</table>
		<div width="100%" style="padding:5px;" class="stxt">
		- 파일은 최대 3개까지 업로드가 지원됩니다.<br>
		</div>
	</td>
</tr>
</table>

<table width="100%">
	<tbody>
		<tr>
			<td align="right" style="padding-top:5px; border:none;" id="avoidDbl">
				<input type="submit" class="bhs_button yb" value="저장" style="float:none;">
			</td>
		</tr>
	</tbody>
</table>
</form>
</div>

</div>

</body>
</html>