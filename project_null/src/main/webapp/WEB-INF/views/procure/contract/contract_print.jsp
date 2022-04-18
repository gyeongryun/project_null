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
					<th colspan="6">거래계약서</th>
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
					<td rowspan="4">수요자</td>
					<td>회사명</td>
					<td>MIT능력개발원</td>
					<td>사업자등록번호</td>
					<td>000-00-00000</td>
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
					<td colspan="6">계약조건</td>
				</tr>
				<tr>
					<td rowspan="3">인수금액<br></td>
					<td>선수금</td>
					<td colspan="4">${cprint.cont_advance}</td>
				</tr>
				<tr>
					<td>중도금</td>
					<td colspan="4">${cprint.cont_middle}</td>
				</tr>
				<tr>
					<td>잔금</td>
					<td colspan="4">${cprint.cont_balance}</td>
				</tr>
				<tr>
					<td rowspan="4">계약조건</td>
					<td>제품하자시</td>
					<td colspan="4">${cprint.cont_flaw}</td>
				</tr>
				<tr>
					<td>계약위반시</td>
					<td colspan="4">${cprint.cont_breach}</td>
				</tr>
				<tr>
					<td>대금지불조건</td>
					<td colspan="4">${cprint.cont_pay}</td>
				</tr>
				<tr>
					<td>세부사항</td>
					<td colspan="4">${cprint.cont_detail}</td>
				</tr>
<!-- 				<tr>
					<td colspan="6">계약일 </td>
				</tr> -->
			</tbody>
		</table>
	</div>
</body>
</body>


</html>