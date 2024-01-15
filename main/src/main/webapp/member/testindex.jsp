<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String user_id = (String)session.getAttribute("user_id");
%>
<h1> 안녕하세요 <%=user_id %> 님</h1>
<form action="./logout.jsp"><input type="submit" value="로그아웃"> </form>

</body>
</html>