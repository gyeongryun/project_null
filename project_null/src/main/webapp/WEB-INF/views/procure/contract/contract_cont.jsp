<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<meta charset="UTF-8">
<title>NULL_계약등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>계약 등록-협력사</h1>
		<form id="searchForm" action="/contract/search" method="post">
			<input type="search" name="part_name" value="" required="required">
			<button type="submit">검색</button>
		</form>
		<div>
			<input type="checkbox" id="menuswitch">
			<label for="menuswitch">
				<img src="/resources/img/등록버튼.png" height=40px align="right" id="registerbutton">
			</label>
			<div id="sidebarregister">
				<form action="/contract/insert" method="post">
					<table>
						<tr>
							<td>협력사명<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="part_name"
								value="${partVO.part_name}" required="required"></td>
						</tr>
						<tr>
							<td>사업자등록번호 :</td>
							<td><input type="text" name="part_number"
								placeholder="000-00-00000"
								value="${partVO.part_number}"></td>
						</tr>
						<tr>
							<td>업태 :</td>
							<td><input type="text" name="part_status"
								value="${partVO.part_status}"></td>
						</tr>
						<tr>
							<td>주소 :</td>
							<td><input type="text" name="part_address"
								value="${partVO.part_address}"></td>
						</tr>
						<tr>
							<td>연락처 :</td>
							<td><input type="text" name="part_contact"
								value="${partVO.part_contact}"></td>
						</tr>
						<tr>
							<td>대표자 :</td>
							<td><input type="text" name="part_rep"
								value="${partVO.part_rep}"></td>
						</tr>
						<tr>
							<td>담당자 :</td>
							<td><input type="text" name="part_manager"
								value="${partVO.part_manager}"></td>
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
					<th>협력사명</th>
					<th>사업자등록번호</th>
					<th>업태</th>
					<th>주소</th>
					<th>연락처</th>
					<th>대표자</th>
					<th>담당자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${item.part_name}</td>
					<td>${item.part_number }</td>
					<td>${item.part_status }</td>
					<td>${item.part_address }</td>
					<td>${item.part_contact }</td>
					<td>${item.part_rep }</td>
					<td>${item.part_manager }</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</body>


</html>