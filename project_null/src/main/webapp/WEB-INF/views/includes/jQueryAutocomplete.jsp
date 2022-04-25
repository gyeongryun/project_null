<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>autocomplete 검색창 구현</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./data.js"></script>
</head>

<body>
	<h2>자동완성</h2>
	<div>
		<input type="text" id="autoInput" placeholder="자동완성" />
	</div>
	<script type="text/javascript">
		$('#autoInput').autocomplete({
			source : function(request, response) { //source: 입력시 보일 목록
				$.ajax({
					url : "/ajax/autocomplete.do",
					type : "POST",
					dataType : "JSON",
					data : {
						value : request.term
					} // 검색 키워드
					,
					success : function(data) { // 성공
						response($.map(data.resultList, function(item) {
							return {
								label : item.item_code // 목록에 표시되는 값
								,
								value : item.item_code // 선택 시 input창에 표시되는 값
								,
								idx : item.item_name
							// index
							};
						})); //response
					},
					error : function() { //실패
						alert("오류가 발생했습니다.");
					}
				});
			},
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength : 1,// 최소 글자수
			delay : 100 //autocomplete 딜레이 시간(ms),
			,
			select : function(evt, ui) {
				// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
				console.log(ui.item.label);
				console.log(ui.item.idx);
			}
		});
	</script>
</body>

</html>