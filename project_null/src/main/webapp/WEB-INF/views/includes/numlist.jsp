<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number Quiz</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>num1</th>
				<th>num2</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="list">
				<tr>
					<td><c:out value="${list.num1}" /></td>
					<td><c:out value="${list.num2}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>