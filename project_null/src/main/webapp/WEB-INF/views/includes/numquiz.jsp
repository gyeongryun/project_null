<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number Quiz</title>
</head>
<body>
	<form action="/quiz/insert" method="post">
		<div>
			num1 : <input type="text" name="num1">
		</div>
		<div>
			num2 : <input type="text" name="num2">
		</div>
		<br>
		<button type="submit" data-oper="save">저장</button>

		<a href="/quiz/look"><button type="button">조회</button></a>
	</form>
	난 01
</body>
</html>