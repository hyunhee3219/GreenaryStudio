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

    <title>아이디찾기</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">
    <link href="../css/signin.css" rel="stylesheet">
     <link href="jumbotron.css" rel="stylesheet">
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
<body>
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
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="regist.jsp">회원가입</a>	</li>
			</ul>
		</div>
 	</nav>	
 	<div class="container">
      <form action="./findPWD_check.jsp" class="form-signin">
       <h2 class="form-signin-heading">비밀번호 찾기</h2>
        <label for="findname" class="sr-only">이름</label> 이름
       <input type="text" id="findname" name="findname" class="form-control" placeholder="이름" required autofocus>
        <label for="findID" class="sr-only">아이디</label> 아이디
       <input type="text" id="findID" name="findID" class="form-control" placeholder="아이디" required autofocus>     
        <label for="hp" class="sr-only">핸드폰번호</label> 핸드폰번호
		<input class="form-control" name="hp" type="text" pattern="\d*" size=20 name= "hp" maxlength="17" placeholder = "'-'를 제외한 핸드폰 번호를 입력하시오"/>
		
        <div class="checkbox">
          <label>
           ==회원정보에 등록된 휴대전화로 인증==
          </label>
        </div>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">아이디찾기</button>
      </form>
</table>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>