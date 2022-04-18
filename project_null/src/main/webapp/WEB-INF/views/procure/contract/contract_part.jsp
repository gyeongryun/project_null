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
<!-- cont_code, item_code, part_name, supply_price, item_qntty, supply_lt, cont_advance, cont_middle, cont_balance, cont_flaw, cont_breach, cont_pay, cont_detail -->
					<table>
						<tr>
							<td>계약서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="cont_code"
								value="${contractVO.cont_code}" required="required"></td>
						</tr>
						<tr>
							<td>품목코드<span style="color: red">*</span> :</td>
							<td><input type="text" name="item_code"
								value="${contractVO.item_code}" required></td>
						</tr>
						<tr>
							<td>협력업체명<span style="color: red">*</span> :</td>
							<td><input type="text" name="part_name"
								value="${contractVO.part_name}" required></td>
						</tr>
						<tr>
							<td>공급가격(단가) :</td>
							<td><input type="text" name="supply_price"
								value="${contractVO.supply_price}"></td>
						</tr>
						<tr>
							<td>수량 :</td>
							<td><input type="text" name="item_qntty"
								value="${contractVO.item_qntty}"></td>
						</tr>
						<tr>
							<td>부품공급 L/T :</td>
							<td><input type="text" name="supply_lt"
								value="${contractVO.supply_lt}"></td>
						</tr>
						<tr>
							<td>선수금 :</td>
							<td><input type="text" name="cont_advance"
								value="${contractVO.cont_advance}"></td>
						</tr>
						<tr>
							<td>중도금 :</td>
							<td><input type="text" name="cont_middle"
								value="${contractVO.cont_middle}"></td>
						</tr>
						<tr>
							<td>잔금 :</td>
							<td><input type="text" name="cont_balance"
								value="${contractVO.cont_balance}"></td>
						</tr>
						<tr>
							<td>제품하자시 :</td>
							<td><input type="text" name="cont_flaw"
								value="${contractVO.cont_flaw}"></td>
						</tr>
						<tr>
							<td>계약위반시 :</td>
							<td><input type="text" name="cont_breach"
								value="${contractVO.cont_breach}"></td>
						</tr>
						<tr>
							<td>대금지불조건 :</td>
							<td><input type="text" name="cont_pay"
								value="${contractVO.cont_pay}"></td>
						</tr>
						<tr>
							<td>세부사항 :</td>
							<td><input type="text" name="cont_detail"
								value="${contractVO.cont_detail}"></td>
						</tr>

					</table>

					<label for="menuswitch"> <img src="/resources/img/닫기버튼.png"
						height=40px align="right">
					</label>

					<button id="submit_btn" type="submit" id="submit_btn">저장</button>
					<label for="submit_btn">
						<img src="/resources/img/저장버튼.png" height=40px align="right">
					</label>
					<a href="/contract/cont?part_name=${load.part_name}">
						<img src="/resources/img/다음버튼.png" height=40px align="right">
					</a>
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