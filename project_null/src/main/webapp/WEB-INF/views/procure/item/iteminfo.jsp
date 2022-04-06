<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<meta charset="UTF-8">
<title>NULL_물품등록 화면</title>
</head>
<div id="sidebarregister">
<form action="/item/insert" method="post">
	<div>
		품목코드<span style="color:red">*</span> : <input type="text" name="item_code">
	</div>
	<br>
	<div>
		품목명<span style="color:red">*</span> : <input type="text" name="item_name">
	</div>
	<br>
	<div>
		재질 : <input type="text" name="item_material">
	</div>
	<br>
	<div>
		규격 : <input type="text" name="item_stand">
	</div>
	<br>
	<div>
		제작사양 : <input type="text" name="item_product">
	</div>
	<br>
	<div>
		도면 : <input type="text" name="item_draw">
	</div>
	<br> <a href="#"><button type="button">닫기</button></a>
	<button type="submit">저장</button>
</form>
</div>
<body>
	<h1>물품 등록 정보</h1>
	<hr>
	<!-- item_code, item_name, item_material, item_stand, item_product, item_draw -->
	<br>

</body>


</html>