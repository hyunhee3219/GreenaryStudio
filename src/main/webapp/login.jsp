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
	
	<!--          script 선언          -->
    <script src="https://code.jquery.com/jquery-3.1.1min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	</head>

<title>Login</title>

</head>
<body><nav class="navbar navbar-default">
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
				<li><a href="guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="regist.jsp">회원가입</a></li>
						<li><a href="./admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	


<div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top: 20px;">
			<form name="frmLogin" method="post" onsubmit="return loginForm();">
				<h3 style="text-align:center;">Login</h3><br/>
				<div class="form-group">		
					<input type="text" class = "form-control" placeholder="아이디" name="user_id"/> <br>
    			</div>
    			<div class="form-group">
    				<input type="password" class = "form-control" placeholder="비밀번호" name="user_pw"/> <br>
    			</div>
    			<input type="submit" class="btn btn-primary form-control" value="로그인"/>
			</form>	<br>
				<form name="findform1" method = "post" action = "./findID.jsp">
				<input type="submit" class="btn btn-primary form-control" value="아이디찾기"/>
				
			</form><br>
				<form name="findform2" method = "post" action = "./findPWD.jsp">
				<input type="submit" class="btn btn-primary form-control" value="비밀번호찾기"/>
			
			</form>    			
    		<br>	<br>
    		<form name="registform" action = "regist.jsp" method=post>
    		<input type="submit" class="btn btn-primary form-control" value="회원가입" />
    		</form>		
		</div>
	</div>
	<div class="col-lg-4"></div>
	
</div>
 
</body>
</html>