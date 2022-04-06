<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>협력사 정보 수정</title>
</head>
<body>
	<form action="/partner/modify" method="post">
<%-- 		<input type="hidden" name="bno" value="${board.bno }"> <input
			type="hidden" name="pageNum" value="${criteria.pageNum}"> <input
			type="hidden" name="amount" value="${criteria.amount }"> <b>회사명</b>: --%>
		<div class="row">
			<input type="text" name="title"
				class="" id="exampleLastName"
				value="${list.part_name } ">

		</div>
		<br> <b>회사명</b>:
		<div class="row">
			<input type="text" name="part_name" value="${list.part_name }" readonly>
		</div>
		<br> <b>주소</b>:
		<div class="row">
			<input type="text" name="part_address" value="${list.part_address }">
		</div>
		<br> <b>전화번호</b>:
		<div class="row">
			<input type="text" name="part_tel" value="${list.part_tel }">
		</div>
		<br> <b>대표자</b>:
		<div class="row">
			<input type="text" name="part_rep" value="${list.part_rep }">
		</div>
		<br> <b>담당자</b>:
		<div class="row">
			<input type="text" name="part_manager" value="${list.part_manager }">
		</div>
<%-- 		<br> <b>내용</b>:
		<div class="row">
			<textarea name="content">
     	                       ${board.content }
			</textarea>
		</div> --%>
		<br>
		<div class="row">
			<button class="" data-oper="modify">수정</button>
			&nbsp;

			<button class="" data-oper="remove">삭제</button>
			&nbsp;

			<button type="button" style="text-align: right" class=""
				data-oper="list">목록으로</button>
		</div>
	</form>
</body>
</html>