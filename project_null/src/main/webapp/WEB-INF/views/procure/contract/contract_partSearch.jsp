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
		<h1>계약 등록-협력사</h1>
		<form id="searchForm" action="/contract/search" method="post">
			<input type="search" name="part_name" value="" required="required" id="searchPart_name">
			<button type="submit">검색</button>
			<script>
		    $("#searchPart_name").autocomplete({
		        source : function(request, response) {
		            $.ajax({
		                  url : "/contsearch/searchPart_name"
		                , type : "GET"
		                , dataType : "json"
		                , data : {keyword : $("#searchPart_name").val()} // 검색 키워드
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
				<form action="/contract/insert" method="post">
					<table>
						<tr>
							<td>협력사명<span style="color: red">*</span> :
							</td>
							<td><input type="text" name="part_name"
								value="${item.part_name}" required="required" id="autoPart_name">
								<script>
							    $("#autoPart_name").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/contsearch/autoPart_name"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoPart_name").val()} // 검색 키워드
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
							<td>사업자등록번호 :</td>
							<td><input type="text" name="part_number"
								placeholder="ex)000-00-00000"
								value="${item.part_number}"></td>
						</tr>
						<tr>
							<td>업태 :</td>
							<td><input type="text" name="part_status"
								value="${item.part_status}" id="autoPart_status">
								<script>
							    $("#autoPart_status").autocomplete({
							        source : function(request, response) {
							            $.ajax({
							                  url : "/contsearch/autoPart_status"
							                , type : "GET"
							                , dataType : "json"
							                , data : {keyword : $("#autoPart_status").val()} // 검색 키워드
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
							<td>주소 :</td>
							<td><input type="text" name="part_address"
								value="${item.part_address}"></td>
						</tr>
						<tr>
							<td>연락처 :</td>
							<td><input type="text" name="part_contact"
								value="${item.part_contact}"></td>
						</tr>
						<tr>
							<td>대표자 :</td>
							<td><input type="text" name="part_rep"
								value="${item.part_rep}"></td>
						</tr>
						<tr>
							<td>담당자 :</td>
							<td><input type="text" name="part_manager"
								value="${item.part_manager}"></td>
						</tr>

					</table>

					<label for="menuswitch"> <img src="/resources/img/닫기버튼.png"
						height=40px align="right">
					</label>

					<button id="submit_btn" type="submit" id="submit_btn">저장</button>
					<label for="submit_btn">
						<img src="/resources/img/저장버튼.png" height=40px align="right">
					</label>
					<a href="/contract/cont?part_name=${item.part_name}">
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
				<c:forEach items="${result}" var="result2">
					<tr>
						<td><a href="#">${result2.part_name}</a>
						</td>
						<td><c:out value="${result2.part_number}" /></td>
						<td><c:out value="${result2.part_status}" /></td>
						<td><c:out value="${result2.part_address}" /></td>
						<td><c:out value="${result2.part_contact}" /></td>
						<td><c:out value="${result2.part_rep}" /></td>
						<td><c:out value="${result2.part_manager}" /></td>			
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</body>


</html>