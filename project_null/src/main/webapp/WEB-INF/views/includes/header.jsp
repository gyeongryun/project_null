<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="/resources/css/header.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<!-- <title>NULL</title> -->

</head>
<body>
	<header>
		<a href="/home"><img src="/resources/img/nullimg_bm.png"
			height=50px class="brand_logo" alt="Logo"></a>
		<nav>
			<ul>

				<li class="header"><a href="#1">관리메뉴</a></li>
				<li class="header"><a href="#2">판매메뉴</a></li>
				<li class="header"><a href="#3">제조메뉴</a></li>
				<li class="header"><a href="/procure/home">조달메뉴</a></li>
				<li class="header"><a href="#5">지원메뉴</a></li>
			</ul>
		</nav>

	</header>

	<div>
		<input type="checkbox" id="menuicon" checked="checked"> 
		<label for="menuicon">
			<span></span> <span></span> <span></span>
		</label>

		<div class="sidebar">
			<div id=sidemenu>
				<br>
				<ul>
					<a href="/procure/home"><span class="material-icons">arrow_forward_ios</span>
						<span class="menu">조달관리</span></a>
					<br>
					<li class="sider"><a href="/item/home">품목 등록 정보</a></li>
					<br>
					<li class="sider"><a href="/contract/home">계약 등록</a></li>
					<br>
					<li class="sider"><a href="/obtain/home">조달 계획 등록</a></li>
					<br>
				</ul>
				<br>
				<ul>
					<a href="/purchase/home"> <span class="material-icons">arrow_forward_ios</span>
						<span class="menu">발주관리</span></a>
					<br>
					<li class="sider"><a href="/purchase/home">구매 발주서 발행</a></li>
					<br>
					<li class="sider"><a href="#6">진척 검수 처리</a></li>
					<br>
					<li class="sider"><a href="#7">입고 처리</a></li>
					<br>
					<li class="sider"><a href="#8">거래 명세서 발행</a></li>
					<br>
					<li class="sider"><a href="#">구매 발주서 마감</a></li>
					<br>
					<li class="sider"><a href="#9">발주 진행 현황 리포트</a></li>
					<br>
				</ul>
				<br>
				<ul>
					<a href="#10"> <span class="material-icons">arrow_forward_ios</span>
						<span class="menu">자재관리</span></a>
					<br>
					<li class="sider"><a href="#11">출고 처리</a></li>
					<br>
					<li class="sider"><a href="#12">재고 산출</a></li>
					<br>
					<li class="sider"><a href="#13">재고 금액 현황 리포트</a></li>
					<br>
				</ul>
			</div>
		</div>
		<div class="circle"></div>
	</div>
</body>
</html>