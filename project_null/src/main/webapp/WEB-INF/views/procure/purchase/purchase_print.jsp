<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/header.css" rel="stylesheet">
<title>NULL_구매발주서발행 출력화면</title>
</head>
<body>
	<div>
		<!-- item_code -->
		<br>
		<table style="table-layout: fixed; width: 1000px"
			class="table-bordered">
			<thead>
				<tr>
					<th colspan="6">발주서</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="4">공급자</td>
					<td>회사명</td>
					<td>${print.part_name}</td>
					<td>사업자등록번호</td>
					<td>${print.part_number}</td>
					<td rowspan="4">(인)</td>
				</tr>
				<tr>
					<td>업태</td>
					<td>${print.part_status}</td>
					<td>대표자</td>
					<td>${print.part_rep}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${print.part_address}</td>
					<td>담당자</td>
					<td>${print.part_manager}</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${print.part_contact}</td>
					<td></td>
					<td></td>
				</tr>


				<tr>
					<td rowspan="4">발주자</td>
					<td>회사명</td>
					<td>MIT능력개발원</td>
					<td>사업자등록번호</td>
					<td>000-000</td>
					<td rowspan="4">(인)</td>
				</tr>
				<tr>
					<td>업태</td>
					<td>교육서비스업</td>
					<td>대표자</td>
					<td>아무개 대표</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>경기도 수원시</td>
					<td>담당자</td>
					<td>양현일 교수</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>031-000-0000</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td rowspan="2">품목정보</td>
					<td>품목명</td>
					<td>${print.item_name}</td>
					<td>품목코드</td>
					<td colspan="2">${print.item_code}</td>
				</tr>
				<tr>
					<td>규격</td>
					<td>${print.item_stand}</td>
					<td>재질</td>
					<td colspan="2">${print.item_material}</td>
				</tr>
				<tr>
					<td rowspan="2">납기/수량</td>
					<td>일정</td>
					<td colspan="4">${print.item_due}</td>
				</tr>
				<tr>
					<td>수량</td>
					<td colspan="4">${print.item_qntty}</td>
				</tr>
				<tr>
					<td rowspan="2">가격</td>
					<td>단가</td>
					<td colspan="4">${print.supply_price}</td>
				</tr>
				<tr>
					<td>총 가격</td>
					<td colspan="4">
						<c:set var="priceAmount"
							value="${print.supply_price * print.supply_price}" />
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</body>


</html>