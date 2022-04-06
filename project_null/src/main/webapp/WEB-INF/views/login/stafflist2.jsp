<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NULL 등록 페이지</title>
<link rel="stylesheet" href="/resources/css/tables.css">
</head>
<body>
	<div class="card-body">
		<table class="table table-bordered" id="dataTable">
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
	<div class="card-body">
		<table class="table table-bordered" id="dataTable">
			<thead>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
					<td>61</td>
					<td>2011/04/25</td>
					<td>$320,800</td>
				</tr>
				<tr>
					<td>Donna Snider</td>
					<td>Customer Support</td>
					<td>New York</td>
					<td>27</td>
					<td>2011/01/25</td>
					<td>$112,000</td>
				</tr>
			</tbody>
		</table>

	</div>




</body>
</html>