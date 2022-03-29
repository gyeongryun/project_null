<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/resources/css/header.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<!-- <title>NULL_구매관리 페이지</title> -->

</head>
<header>
	<a href="/procure/home"><img src="/resources/img/nullimg_bm.png" height=50px
		class="brand_logo" alt="Logo"></a>
	<nav>
		<ul>

			<li><a href="#">관리메뉴</a></li>
			<li><a href="#">판매메뉴</a></li>
			<li><a href="#">제조메뉴</a></li>
			<li><a href="/procure/home">조달메뉴</a></li>
			<li><a href="#">지원메뉴</a></li>
		</ul>
	</nav>

</header>
<div id="sidebarall">
	<input type="checkbox" id="menuicon"> <label for="menuicon">
		<span></span> <span></span> <span></span>
	</label>

	<div class="sidebar">
		<ul id=sidemenu>
			<br>
			<ul>
				<a href="#1"><span class="material-icons">arrow_forward_ios</span>
					<span class="menu">조달관리</span></a><br>
				<li><a href="#">품목 등록 정보</a></li><br>
				<li><a href="#">계약 등록</a></li><br>
				<li><a href="#">조달 계획 등록</a></li><br>
			</ul>
			<br>
			<ul>
				<a href="#"> <span class="material-icons">arrow_forward_ios</span>
					<span class="menu">발주관리</span></a><br>
				<li><a href="#">구매 발주서 발행</a></li><br>
				<li><a href="#">진척 검수 처리</a></li><br>
				<li><a href="#">입고 처리</a></li><br>
				<li><a href="#">거래 명세서 발행</a></li><br>
				<li><a href="#">구매 발주서 마감</a></li><br>
				<li><a href="#">발주 진행 현황 리포트</a></li><br>
			</ul>
			<br>
			<ul>
				<a href="#"> <span class="material-icons">arrow_forward_ios</span>
					<span class="menu">자재관리</span></a><br>
				<li><a href="#">출고 처리</a></li><br>
				<li><a href="#">재고 산출</a></li><br>
				<li><a href="#">재고 금액 현황 리포트</a></li><br>
			</ul>
		</ul>
	</div>
	<div class="circle"></div>
</div>
<body>
</body>
</html>