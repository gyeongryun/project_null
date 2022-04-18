<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<meta charset="UTF-8">
<title>NULL_조달계획등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>조달 계획 등록</h1>
		<form id="searchForm" action="/obtain/search" method="post">
			<input type="search" name="order_code" value="" required="required">
			<button type="submit">검색</button>
		</form>
		<div>
			<input type="checkbox" id="menuswitch">
			<label for="menuswitch">
				<img src="/resources/img/등록버튼.png" height=40px align="right" id="registerbutton">
			</label>
			<div id="sidebarregister">
				<form action="/obtain/insert" method="post">
					<table>
					<!-- order_code cont_code item_code item_mrp item_prodate item_require item_due-->
						<tr>
							<td>발주서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="order_code"
								value="${onelist.order_code}" required="required"></td>
						</tr>
						<tr>
							<td>계약서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="cont_code"
								value="${onelist.cont_code}" required="required"></td>
						</tr>
						<tr>
							<td>품목코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="item_code"
								value="${onelist.item_code}" required="required"></td>
						</tr>
						<tr>
							<td>품목명<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="item_name" 
								value="${onelist.item_name}" disabled></td>
						</tr>
						<tr>
							<td>자재 소요 공정 :</td>
							<td><input type="text" name="item_mrp"
								value="${onelist.item_mrp}"></td>
						</tr>
						<tr>
							<td>소요량(숫자만) :</td>
							<td><input type="number" name="item_require"
								value="${onelist.item_require}" required></td>
						</tr>
						<tr>
							<td>소요일정 :</td>
							<td><input type="date" name="item_prodate"
								value="${onelist.item_prodate}"></td>
						</tr>
						<tr>
							<td>조달납기일 :</td>
							<td><input type="date" name="item_due"
								value="${onelist.item_due}"></td>
						</tr>

					</table>

					<label for="menuswitch"> <img src="/resources/img/닫기버튼.png"
						height=40px align="right">
					</label>

					<button id="submit_btn" type="submit" id="submit_btn">저장</button>
					<label for="submit_btn">
						<img src="/resources/img/저장버튼.png" height=40px align="right">
					</label>
				</form>
			</div>
		</div>

		<hr>

		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>발주서코드</th>
					<th>계약서코드</th>
					<th>품목코드</th>
					<th>자재소요공정</th>
					<th>소요량</th>
					<th>소요일정</th>
					<th>조달납기일</th>
				</tr>
			</thead>
			<tbody>
<!-- order_code cont_code item_code item_mrp item_prodate item_require item_due-->
				<tr>
					<td>${onelist.order_code}</td>
					
					<td>${onelist.cont_code}</td>
					<td>${onelist.item_code}</td>
					<td>${onelist.item_mrp}</td>
					<td>${onelist.item_require}</td>
					<td>${onelist.item_prodate}</td>
					<td>${onelist.item_due}</td>


				</tr>

			</tbody>
		</table>
	</div>
</body>
</body>


</html>