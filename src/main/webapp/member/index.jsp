<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Hello, World! </h1>
<br>
<%

String session_id = (String)session.getAttribute("user_id");
//String admin_id = (String)session.getAttribute("admin_id");

if(session_id!=null) {
	%>
	당신의 아이디는 <%=session_id %> 입니다.
	<form action="../mypage/mypage.jsp" method="get" name="first" id="first">
	<input type="submit" value="마이페이지">
		<script>
		alert('나의 정보 확인'');
		
</script>
</form>

	<form action="./logout.jsp"><input type="submit" value="로그아웃"> </form>
	<% 
} else {
	%>
	반갑습니다...
	<form action="./login.jsp"><input type="submit" value="로그인"> </form>
	<% } %>




</body>
</html>