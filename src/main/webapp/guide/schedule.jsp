<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 스케줄</title>

	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="./css/style.css">
	
	<!--          script 선언          -->
    <script src="https://code.jquery.com/jquery-3.1.1min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
<style>
body {
    text-align: center;
}

button {
    margin: 20px;
}

.main {
    border: none;
    font-size: 30px;
    font-weight: 600;
    background: white;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}

.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}
</style>

<script>
function main() {
	var f = document.myForm;
	f.action = "../index.jsp";
	f.submit();
}

function first() {
	var f = document.myForm;
	f.action = "guide.jsp";
	f.submit();
}

function second() {
	var f = document.myForm;
	f.action = "schedule.jsp";
	f.submit();
}

function third() {
	var f = document.myForm;
	f.action = "studio.jsp";
	f.submit();
}
</script>

</head>

<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
			</button>
			<a class = "navbar-brand" href="../index.jsp">Greenery Studio</a>
		</div>
		
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="../member/login.jsp">로그인</a></li>
						<li><a href="../member/regist.jsp">회원가입</a></li>
						<li><a href="../admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
 	
<form name="myForm" method=get>

<button class="main" type="button" onclick="main();">Greenery Studio</button>
<br>
<button class="w-btn w-btn-indigo" type="button" onclick="first();">예약 안내</button>
<button class="w-btn w-btn-green" type="button" onclick="second();">예약 스케줄</button>
<button class="w-btn w-btn-indigo" type="button" onclick="third();">룸 안내</button>
<hr>

<div>

<hr>
</div>
    
    <footer>
        <div class="footer_container">
          
            <div class="footA">
             Copyright © Greenery Studio's All Rights Reserved.
            </div>
        </div>
    </footer>
</form>

</body>
</html>