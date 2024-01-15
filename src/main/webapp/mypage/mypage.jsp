<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style_index.css">

	<!--          script 선언          -->
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="../js/script.js"></script>
<script src="https://kit.fontawesome.com/10216ee89a.js" crossorigin="anonymous"></script>
<title>마이페이지</title>
</head>
<body >
<%
request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");

%>
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

				<li><a href="schedule.jsp">실시간 예약</a></li>
				<li><a href="../member/logout.jsp">로그아웃</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="../member/logout.jsp">로그아웃</a></li>
						<li><a href="login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
 
	
 	<div class="main_container">
 	 <div class="conB">
 	 	<div class="conB_title">
 	 	<h3>welcome, <%=user_id %></h3>
 	 	</div>
 	 </div>
 	 <div class="conB">
            
            <div class="conB_container">
                <div class="conB_small_container">
                    <div class="conB_icon">
                       <a href="myinfo.jsp"> 
                       <i class="fa-solid fa-id-card fa-2xl icon" style="color: #ffffff;"></i>                 
                    </a>
                    </div>
                    <div class="conB_content">
                        <h3>myinfo</h3>
                        <p>나의정보</p>
                    </div>
                </div>
              
                <div class="conB_small_container">
                    <div class="conB_icon">
                    	<a href="myschedule.jsp">
                        <i class="fa-solid fa-calendar-days icon" style="color: #ffffff;"></i>
                    </a>
                    </div>
                    <div class="conB_content">
                        <h3>Booking</h3>
                        <p>나의예약현황</p>
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