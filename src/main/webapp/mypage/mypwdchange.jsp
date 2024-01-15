<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">


    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">
    <link href="../css/signin.css" rel="stylesheet">
   <script src="../js/ie-emulation-modes-warning.js"></script>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  </head>
<%@ include file="../dbcon.jsp" %>
<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="./js/script.js"></script>


<meta charset="UTF-8">
<title>비밀번호 확인</title>
</head>

<body>
<%
request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");
%>

<nav class="navbar navbar-default navbar-fixed-top">
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
				<li><a href="../mypage/mypage.jsp">마이페이지</a></li>
			</ul>
		</div>
 	</nav>	
<div class="container">
<form class="form-signin" action="./mypwd_check.jsp" name="changeform" method="post" onSubmit="return validateForm();">
        <h2 class="form-signin-heading">비밀번호변경</h2>
        
        <label for="userID" class="sr-only">아이디</label>
        아이디  <input type="text" id="user_id" name="user_id" class="form-control" value="<%=user_id%>" readonly >
        <label for="pwdh" class="sr-only">현재 비밀번호</label>
        현재 비밀번호<input type="password" id="pwdh" name="pwdh" class="form-control" placeholder="현재 비밀번호">
        <button class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 확인</button>
   
      </form>


</body>
</html>