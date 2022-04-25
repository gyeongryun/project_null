<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>NULL_조달계획등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>조달 계획 등록</h1>
		<form id="searchForm" action="/obtain/search" method="post">
			<input type="search" name="order_code" value="" required="required" id="searchOrder_code">
			<script>
		    $("#searchOrder_code").autocomplete({
		        source : function(request, response) {
		            $.ajax({
		                  url : "/obsearch/searchOrder_code"
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
				<form action="/obtain/insert" method="post">
					<table>
					<!-- order_code cont_code item_code item_mrp item_prodate item_require item_due-->
						<tr>
							<td>발주서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="order_code"
								value="${onelist.order_code}" required="required" id="autoOrder_code">
								<script>
							    $("#autoOrder_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/obsearch/autoOrder_code"
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
							<td>계약서코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="cont_code"
								value="${onelist.cont_code}" required="required" id="autoCont_code">
								<script>
							    $("#autoCont_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/obsearch/autoCont_code"
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
							<td>품목코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="item_code"
								value="${onelist.item_code}" required="required" id="autoItem_code">
								<script>
							    $("#autoItem_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/obsearch/autoItem_code"
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
				<c:forEach items="${result}" var="result">
					<tr>
						<td><a href="#">${result.order_code}</a>
						</td>
						<td><c:out value="${result.cont_code}" /></td>
						<td><c:out value="${result.item_code}" /></td>
						<td><c:out value="${result.item_mrp}" /></td>
						<td><c:out value="${result.item_require}" /></td>
						<td><c:out value="${result.item_prodate}" /></td>
						<td><c:out value="${result.item_due}" /></td>			
					</tr>
				</c:forEach>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</body>


</html>