<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/tables.css">
<title>NULL 등록 페이지</title>
</head>
<body>

	<h1>직원 목록</h1>
	<div class="card-body">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>이름</th>
					<th>부서</th>
					<th>직급</th>
					<th>번호</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>이름</th>
					<th>부서</th>
					<th>직급</th>
					<th>번호</th>

				</tr>
			</tfoot>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td><c:out value="${list.staff_name}" /></td>
						<td><c:out value="${list.staff_depart}" /></td>
						<td><c:out value="${list.staff_title}" /></td>
						<td><c:out value="${list.staff_tel}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>





</body>
</html>