<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>NULL_계약등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>계약 등록-계약 세부 내용</h1>
		<form id="searchForm" action="/contract/search" method="post">
			<input type="search" name="part_name" value="" required="required" id="searchCont_code">
			<button type="submit">검색</button>
			<script>
		    $("#searchCont_code").autocomplete({
		        source : function(request, response) {
		            $.ajax({
		                  url : "/contsearch/searchCont_code"
		                , type : "GET"
		                , dataType : "json"
		                , data : {keyword : $("#searchCont_code").val()} // 검색 키워드
		                , success : function(data){ // 성공
		                    response(
		                        $.map(data, function(item) {
		                            return {
		                                  label : item	//목록에 표시되는 값
		                                , value : item	//선택 시 input창에 표시되는 값
		                                , idx : item	// db 인덱스를 담을수 있음 (예제)
		                            };
		                        })
		                    );    //response
		                }
		                ,
		                error : function(){ //실패
		                    alert("통신에 실패했습니다.");
		                }
		            });
		        }
		        , minLength : 1
		        , autoFocus : false
		        , select : function(evt, ui) {
		            console.log("전체 data: " + JSON.stringify(ui));
		            console.log("db Index : " + ui.item);
		            console.log("검색 데이터 : " + ui.item);
		        }
		        , focus : function(evt, ui) {
		            return false;
		        }
		        , close : function(evt) {
		        }
		    });
			</script>	
		</form>
		<div>
			<input type="checkbox" id="menuswitch" checked>
			<label for="menuswitch">
				<img src="/resources/img/등록버튼.png" height=40px align="right" id="registerbutton">
			</label>
			<div id="sidebarregister">
				<form action="/contract/insertcont" method="post">
<!-- cont_code, item_code, part_name, supply_price, item_qntty, supply_lt, cont_advance, cont_middle, cont_balance, cont_flaw, cont_breach, cont_pay, cont_detail -->
					<table>
						<tr>
							<td>계약서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="cont_code"
								value="${contractVO.cont_code}" required="required" id="autoCont_code">
																<script>
							    $("#autoCont_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/contsearch/autoCont_code"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoCont_code").val()} // 검색 키워드
							                , success : function(data){ // 성공
							                    response(
							                        $.map(data, function(item) {
							                            return {
							                                  label : item	//목록에 표시되는 값
							                                , value : item	//선택 시 input창에 표시되는 값
							                                , idx : item	// db 인덱스를 담을수 있음 (예제)
							                            };
							                        })
							                    );    //response
							                }
							                ,
							                error : function(){ //실패
							                    alert("통신에 실패했습니다.");
							                }
							            });
							        }
							        , minLength : 1
							        , autoFocus : false
							        , select : function(evt, ui) {
							            console.log("전체 data: " + JSON.stringify(ui));
							            console.log("db Index : " + ui.item);
							            console.log("검색 데이터 : " + ui.item);
							        }
							        , focus : function(evt, ui) {
							            return false;
							        }
							        , close : function(evt) {
							        }
							    });
								</script>	
							</td>
						</tr>
						<tr>
							<td>품목코드<span style="color: red">*</span> :</td>
							<td><input type="text" name="item_code"
								value="${contractVO.item_code}" required id="autoItem_code">
								<script>
							    $("#autoItem_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/contsearch/autoItem_code"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoItem_code").val()} // 검색 키워드
							                , success : function(data){ // 성공
							                    response(
							                        $.map(data, function(item) {
							                            return {
							                                  label : item	//목록에 표시되는 값
							                                , value : item	//선택 시 input창에 표시되는 값
							                                , idx : item	// db 인덱스를 담을수 있음 (예제)
							                            };
							                        })
							                    );    //response
							                }
							                ,
							                error : function(){ //실패
							                    alert("통신에 실패했습니다.");
							                }
							            });
							        }
							        , minLength : 1
							        , autoFocus : false
							        , select : function(evt, ui) {
							            console.log("전체 data: " + JSON.stringify(ui));
							            console.log("db Index : " + ui.item);
							            console.log("검색 데이터 : " + ui.item);
							        }
							        , focus : function(evt, ui) {
							            return false;
							        }
							        , close : function(evt) {
							        }
							    });
								</script>	
							</td>
						</tr>
						<tr>
							<td>협력업체명<span style="color: red">*</span> :</td>
							<td><input type="text" name="part_name"
								value="${contractVO.part_name}" required id="autoCpart_name">
																<script>
							    $("#autoCpart_name").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/contsearch/autoCpart_name"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoCpart_name").val()} // 검색 키워드
							                , success : function(data){ // 성공
							                    response(
							                        $.map(data, function(item) {
							                            return {
							                                  label : item	//목록에 표시되는 값
							                                , value : item	//선택 시 input창에 표시되는 값
							                                , idx : item	// db 인덱스를 담을수 있음 (예제)
							                            };
							                        })
							                    );    //response
							                }
							                ,
							                error : function(){ //실패
							                    alert("통신에 실패했습니다.");
							                }
							            });
							        }
							        , minLength : 1
							        , autoFocus : false
							        , select : function(evt, ui) {
							            console.log("전체 data: " + JSON.stringify(ui));
							            console.log("db Index : " + ui.item);
							            console.log("검색 데이터 : " + ui.item);
							        }
							        , focus : function(evt, ui) {
							            return false;
							        }
							        , close : function(evt) {
							        }
							    });
								</script>	
							</td>
						</tr>
						<tr>
							<td>공급가격(단가) :</td>
							<td><input type="text" name="supply_price"
								value="${contractVO.supply_price}"></td>
						</tr>
						<tr>
							<td>수량 :</td>
							<td><input type="number" name="item_qntty"
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
					<a href="/contract/part">
						<img src="/resources/img/다음버튼.png" height=40px align="right">
					</a>
					<a href="/contract/print?part_name=${contractVO.part_name}&cont_code=${contractVO.cont_code}">
						<img src="/resources/img/출력버튼.png" height=40px align="right">
					</a>
				</form>
			</div>
		</div>

		<hr>

		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>계약서코드</th>
					<th>품목코드</th>
					<th>협력업체명</th>
					<th>공급가격</th>
					<th>수량</th>
					<th>공급L/T</th>
					<th>선수금</th>
					<th>중도금</th>
					<th>잔금</th>
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
<!-- cont_code, item_code, part_name, supply_price, item_qntty, supply_lt, cont_advance, cont_middle, 
cont_balance, cont_flaw, cont_breach, cont_pay, cont_detail -->
				<tr>
					<td>${item.cont_code}</td>
					<td>${item.item_code}</td>
					<td>${item.part_name}</td>
					<td>${item.supply_price}</td>
					<td>${item.item_qntty}</td>
					<td>${item.supply_lt}</td>
					<td>${item.cont_advance}</td>
					<td>${item.cont_middle}</td>
					<td>${item.cont_balance}</td>
				</tr>

			</tbody>
		</table>
	</div>
</body>
</body>


</html>