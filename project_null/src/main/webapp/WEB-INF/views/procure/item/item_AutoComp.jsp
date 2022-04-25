<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>NULL_자동완성</title>
</head>
<body>
<div id="content">
	<!-- 검색어를 입력할 input box 구현부 -->
	<input id="autoSearch">
	<script>
    $("#autoSearch").autocomplete({
        source : function(request, response) {
            $.ajax({
                  url : "/itemsearch/autocomp"
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
</div>
</body>
</html>