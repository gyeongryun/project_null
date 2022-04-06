<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/tables.css">
<title>NULL 협력사 정보 등록</title>
</head>
<body>

	<div class="card-body">
		<form action="/board/enroll" method="post">
			<div class="input_wrap">
				<label>회사명</label> <input name="title">
			</div>
			<div class="input_wrap">
				<label>주소</label> <input name="title">
			</div>
			<div class="input_wrap">
				<label>연락처</label> <input name="writer">
			</div>
			<div class="input_wrap">
				<label>대표자</label> <input name="writer">
			</div>
			<div class="input_wrap">
				<label>담당자</label> <input name="writer">
			</div>
			<a href="/partner/register"><button style= "background-color: rgb(100,100,100);">회사 등록</button></a>
		</form>
	</div>
</body>
</html>