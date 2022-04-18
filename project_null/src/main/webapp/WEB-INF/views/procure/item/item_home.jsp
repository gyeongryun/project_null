<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<meta charset="UTF-8">
<title>NULL_물품등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>물품 등록 정보</h1>
		<form id="searchForm" action="/item/search" method="post">
			<input type="search" name="item_code" value="${search.item_code}" required="required">
			<button type="submit">검색</button>
		</form>
		<div>
			<input type="checkbox" id="menuswitch">
			<label for="menuswitch">
				<img src="/resources/img/등록버튼.png" height=40px align="right" id="registerbutton">
			</label>
			<div id="sidebarregister">
				<form action="/item/insert" method="post">
					<table>
						<tr>
							<td>품목코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="item_code"
								value="${itemVO.item_code}" required="required"></td>
						</tr>
						<tr>
							<td>품목명<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="item_name"
								value="${itemVO.item_name}" required="required"></td>
						</tr>
						<tr>
							<td>재질 :</td>
							<td><input type="text" name="item_material"
								value="${itemVO.item_material}"></td>
						</tr>

						<tr>
							<td>규격 :</td>
							<td><input type="text" name="item_stand"
								value="${itemVO.item_stand}"></td>
						</tr>

						<tr>
							<td>제작사양 :</td>
							<td><input type="text" name="item_product"
								value="${itemVO.item_product}"></td>
						</tr>

						<tr>
							<td>도면 :</td>
							<td><input type="text" name="item_draw"
								value="${itemVO.item_draw}"></td>
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
		<!-- item_code, item_name, item_material, item_stand, item_product, item_draw -->
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>품목코드</th>
					<th>품목명</th>
					<th>재질</th>
					<th>규격</th>
					<th>제작사양</th>
					<th>도면</th>
				</tr>
			</thead>
			<tbody>
				<%-- 				<c:forEach items="${list }" var="list">
					<tr>
						<td><a href="/item/modify">${list.item_code}</a>
						</td>
						<td><c:out value="${list.item_name}" /></td>
						<td><c:out value="${list.item_material}" /></td>
						<td><c:out value="${list.item_stand}" /></td>
						<td><c:out value="${list.item_product}" /></td>
						<td><c:out value="${list.item_draw}" /></td>
						
					</tr>
				</c:forEach> --%>

				<tr>
					<td>${item.item_code }</td>
					<td>${item.item_name }</td>
					<td>${item.item_material }</td>
					<td>${item.item_stand }</td>
					<td>${item.item_product }</td>
					<td>${item.item_draw }</td>

				</tr>

			</tbody>
		</table>
	</div>
</body>
</body>


</html>