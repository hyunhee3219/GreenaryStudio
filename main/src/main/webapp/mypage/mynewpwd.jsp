<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../dbcon.jsp" %>
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

<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="./js/script.js"></script>

<script>
function validateForm() {
	//console.log('확인');

	var pw1 = document.changeform.pwd1.value;
	var pw2 = document.changeform.pwd2.value;
	
	var pwv=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,12}$/
		if(!pwv.test(pw1)) {
			alert("비밀번호는 영문 대소문자와 숫자, 특수문자를 포함하는 6~12자리로 이루어져야합니다.")
			return false;
		}
	if(pw1!==pw2) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	return true; }

</script>
<title>내 비밀번호 변경</title>
</head>
<body>
<%
String session_id = (String)session.getAttribute("change_pwd");

if(session_id!=null) {
	try {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM semi_member WHERE user_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session_id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String userid = rs.getString("user_id");
			String userpwd = rs.getString("user_pwd");
			
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
				<li><a href="../member/logout.jsp">로그아웃</a></li>
			</ul>
		</div>
 	</nav>	
<div class="container">
<form class="form-signin" action=".member/changePWD.jsp" name="changeform" method="post" onSubmit="return validateForm();">
        <h2 class="form-signin-heading">비밀번호변경</h2>
        
        <label for="userID" class="sr-only">아이디</label>
        아이디  <input type="text" id="user_id" name="user_id" class="form-control" value="<%=userid%>" readonly >
        <label for="inputPassword" class="sr-only">현재비밀번호</label>
        현재 비밀번호 <input type="password" id="inputPassword" class="form-control" value="<%=userpwd%>" readonly>
        <label for="pwd1" class="sr-only">변경 비밀번호</label>
        변경 비밀번호<input type="password" id="pwd1" name="pwd1" class="form-control" placeholder="변경 비밀번호">
         <label for="pwd2" class="sr-only">변경 비밀번호 확인</label>
        변경 비밀번호 확인<input type="password" id="pwd2" name="pwd2" class="form-control" placeholder="변경 비밀번호 확인">
        <button class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 변경</button>
   
      </form>
   
<% }
		}catch(Exception e) {
	e.printStackTrace(); }	
} %>
</body>
</html>