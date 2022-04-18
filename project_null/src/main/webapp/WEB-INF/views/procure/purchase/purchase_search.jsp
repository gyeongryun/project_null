<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<meta charset="UTF-8">
<title>NULL_구매발주서발행 화면</title>
</head>
<body>
	<div id="content">
		<h1>구매 발주서 발행</h1>
		<form id="searchForm" action="/purchase/search" method="post">
			<input type="search" name="order_code" value="${search.order_code}" required="required">
			<button type="submit">검색</button>
		</form>
		<div>
			<input type="checkbox" id="menuswitch">
			<label for="menuswitch">
				<img src="/resources/img/등록버튼.png" height=40px align="right" id="registerbutton">
			</label>
			<div id="sidebarregister">
				<form action="/purchase/insert" method="post">
					<table>
						<tr>
							<td>발주서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="order_code"
								value="${load.order_code}" required="required"></td>
						</tr>
						<tr>
							<td>계약서코드<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="cont_code" 
								value="${load.cont_code}" disabled></td>
						</tr>
						<tr>
							<td>협력사명<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="part_name" 
								value="${load.part_name}" disabled></td>
						</tr>
						<tr>
							<td>품목명<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="item_name" 
								value="${load.item_name}" disabled></td>
						</tr>
						<tr>
							<td>자재소요공정<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="item_mrp" 
								value="${load.item_mrp}" disabled></td>
						</tr>
						<tr>
							<td>소요량<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="item_require" 
								value="${load.item_require}" disabled></td>
						</tr>
						<tr>
							<td>소요일정<span style="color: yellow">*</span> :
							</td>
							<td><input type="text" name="item_prodate" 
								value="${load.item_prodate}" disabled></td>
						</tr>
						<tr>
							<td>조달납기일 :
							</td>
							<td><input type="date" name="item_due"
								value="${load.item_due}"></td>
						</tr>
						<tr>
							<td>발주일자 :</td>
							<td><input type="date" name="order_date"
								value="${load.order_date}"></td>
						</tr>
					</table>
					<label for="menuswitch"> <img src="/resources/img/닫기버튼.png"
						height=40px align="right">
					</label>
					<button id="submit_btn" type="submit">저장</button>
					<label for="submit_btn">
						<img src="/resources/img/저장버튼.png" height=40px align="right">
					</label>
					<button id="print_btn" type="button">출력</button>
					<label for="ptint_btn">
						<img src="/resources/img/출력버튼.png" height=40px align="right">
					</label>
				</form>
			</div>
		</div>

		<hr>
		<!-- item_code, item_name, item_material, item_stand, item_product, item_draw -->
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>발주서코드</th>
					<th>계약서코드</th>
					<th>품목코드</th>
					<th>품목명</th>
					<th>조달납기일</th>
					<th>발주일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${result}" var="list">
					<tr>
						<td><a href="#">${list.order_code}</a>
						</td>
						<td><c:out value="${list.cont_code}" /></td>
						<td><c:out value="${list.item_code}" /></td>
						<td><c:out value="${list.item_name}" /></td>
						<td><c:out value="${list.item_due}" /></td>
						<td><c:out value="${list.order_date}" /></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</body>


</html>