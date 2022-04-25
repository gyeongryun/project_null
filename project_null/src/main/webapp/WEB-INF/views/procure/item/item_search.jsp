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
<title>NULL_품목등록 화면</title>
</head>
<body>
	<div id="content">
		<h1>품목 등록 정보</h1>
		<form id="searchForm" action="/item/search" method="post">
			<input type="search" name="item_code" value="${search.item_code}" required="required" id="autoSearch">
				<script>
			    $("#autoSearch").autocomplete({
			        source : function(request, response) {
			            $.ajax({
			                  url : "/itemsearch/viewItem_code"
			                , type : "GET"
			                , dataType : "json"
			                , data : {keyWord : $("#autoSearch").val()} // 검색 키워드
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
				<form action="/item/insert" method="post">
					<table>
						<tr>
							<td>품목코드<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="item_code"
								value="${itemVO.item_code}" required="required" id="autoItem_code">
								<script>
							    $("#autoItem_code").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/itemsearch/autoItem_code"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyWord : $("#autoItem_code").val()} // 검색 키워드
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
							<td>품목명<span style="color: red">*</span> :
							</td>
							<td>
								<input type="text" name="item_name"
									value="${itemVO.item_name}" required="required" id="autoItem_name">
								<script>
							    $("#autoItem_name").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/itemsearch/autoItem_name"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyWord : $("#autoItem_name").val()} // 검색 키워드
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
							<td>재질 :</td>
							<td>
								<input type="text" name="item_material"
									value="${itemVO.item_material}" id="autoItem_material">
								<script>
							    $("#autoItem_material").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/itemsearch/autoItem_material"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyWord : $("#autoItem_material").val()} // 검색 키워드
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
							<td>규격 :</td>
							<td>
								<input type="text" name="item_stand"
									value="${itemVO.item_stand}" id="autoItem_stand">
								<script>
							    $("#autoItem_stand").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/itemsearch/autoItem_stand"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyWord : $("#autoItem_stand").val()} // 검색 키워드
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
							<td>제작사양 :</td>
							<td>
								<input type="text" name="item_product"
									value="${itemVO.item_product}" id="autoItem_product">
								<script>
							    $("#autoItem_product").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/itemsearch/autoItem_product"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyWord : $("#autoItem_product").val()} // 검색 키워드
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
				<c:forEach var="searchResult" items="${result}">
					<tr>
						<td><a href="#<%-- ?item_code=${item_name} --%>">${searchResult.item_code}</a>
						</td>
						<td><c:out value="${searchResult.item_name}" /></td>
						<td><c:out value="${searchResult.item_material}" /></td>
						<td><c:out value="${searchResult.item_stand}" /></td>
						<td><c:out value="${searchResult.item_product}" /></td>
						<td><c:out value="${searchResult.item_draw}" /></td>
						
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>
</body>
</body>


</html>