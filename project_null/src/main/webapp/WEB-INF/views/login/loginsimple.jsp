<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NULL 로그인 페이지</title>
<link rel = "stylesheet" href = "/resources/css/loginsimplestyle.css?123">
</head>
<body>

    <div class="main">

        
      	<div class="justify-content-center">
			<div class="brand_logo_container">
				<img src="/resources/img/nullimg.png" class="brand_logo" alt="Logo">
			</div>
		</div>
		
        <div class="container">
            <input type="text" placeholder="성함" id="id" class="account">
            <input type="password" placeholder="부서" id="password" class="account">
            <button id="login" class="account">login</button>
            <p id="alert" class="account"> </p>
			<a href="/login/loginpage">
				<input type="button" value="완성 로그인 페이지로 이동">
			</a>
        </div>
    </div>   
    <script src="script.js"></script>

</body>
</html>