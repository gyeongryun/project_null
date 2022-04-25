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
<title>NULL_구매발주서발행 화면</title>
</head>
<body>
	<div id="content">
		<h1>구매 발주서 발행</h1>
		<form id="searchForm" action="/purchase/search" method="post">
			<input type="search" name="order_code" value="${search.order_code}" required="required" id="searchOrder_code">
			<script>
		    $("#searchOrder_code").autocomplete({
		        source : function(request, response) {
		            $.ajax({
		                  url : "/pursearch/searchOrder_code"
		                , type : "GET"
		                , dataType : "json"
		                , data : {keyword : $("#searchOrder_code").val()} // 검색 키워드
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
			<button type="submit">검색</button>
		</form>
		<div>
			<input type="checkbox" id="menuswitch" checked>
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
								value="${onelist.order_code}" required="required" id="autoOrder_code">
								<script>
							    $("#autoOrder_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/pursearch/autoOrder_code"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoOrder_code").val()} // 검색 키워드
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
					<a href="/purchase/print?order_code=${load.order_code}">
						<img src="/resources/img/출력버튼.png" height=40px align="right">
					</a>
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