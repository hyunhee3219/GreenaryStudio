
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">

	<!--          script 선언          -->
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="./js/script.js"></script>


<title>Greenery Studio</title>
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
			<a class = "navbar-brand" href="index.jsp">Greenery Studio</a>
		</div>
		
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="./guide/guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="./member/login.jsp">로그인</a></li>
						<li><a href="./member/regist.jsp">회원가입</a></li>
						<li><a href="./admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
<div class="main_container">
        <div class="conA">
            <div class="slide img1"></div>
            <div class="slide img2"></div>
            <div class="slide img3"></div>
        </div>
        <div class="conB">
            <div class="conB_title">
                <h3>Welcome to Greenery Studio</h3>
            </div>
            <div class="conB_container">
                <div class="conB_small_container">
                    <div class="conB_icon">
                       <a href="./guide/guide.jsp">  
                       <i class="fa-solid fa-book-open icon" style="color: #ffffff;"></i>                 
                    </a>
                    </div>
                    <div class="conB_content">
                        <h3>Guide</h3>
                        <p>예약 안내</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    <div class="conB_icon">
                    	<a href="./guide/schedule.jsp">
                        <i class="fa-solid fa-calendar-days icon" style="color: #ffffff;"></i>
                    </a>
                    </div>
                    <div class="conB_content">
                        <h3>Booking</h3>
                        <p>실시간 예약</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    <div class="conB_icon">
                    	<a href="./guide/studio.jsp">
                        <i class="fa-solid fa-camera-retro icon" style="color: #ffffff;"></i>
                    </a>
                    </div>
                    <div class="conB_content">
                        <h3>Studio</h3>
                        <p>스튜디오</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer_container">
          
            <div class="footA">
             Copyright © Greenery Studio's All Rights Reserved.
            </div>
        </div>
    </footer>

</body>
</html>