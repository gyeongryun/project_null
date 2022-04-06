<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/tables.css">
<title>NULL 협력사 정보 페이지</title>
</head>
<body>
	<h1>NULL 협력사 정보 페이지 입니다.</h1>
	<p>
		협력사 정보 페이지 입니다.<br />
		협력사 이름을 클릭하여 정보를 수정하거나 차트 상단의 버튼을 눌러 새 회사를 추가해주세요.<br />		
		part_name,part_address,part_tel,part_rep,part_manager
	</p>
	<hr />
	<a href="/partner/register"><button style= "margin-left: 370px; background-color: rgb(237,190,190);">회사 추가</button></a>
	<div class="card-body">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>회사명</th>
					<th>주소</th>
					<th>전화번호</th>
					<th>대표자</th>
					<th>담당자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td><a href="/procure/modify">${list.part_name}</a>
						</td>
						<td><c:out value="${list.part_address}" /></td>
						<td><c:out value="${list.part_tel}" /></td>
						<td><c:out value="${list.part_rep}" /></td>
						<td><c:out value="${list.part_manager}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>