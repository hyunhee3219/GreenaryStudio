<%@ page import = "member.*" %>
<%@ page import = "reservation.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
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

request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");
int re_num =  Integer.parseInt(request.getParameter("re_num"));

ReservationDAO dao = new ReservationDAO();

dao.deleteRe(re_num);
%>
<script>
alert("예약취소 완료");
window.location.href='./mypage.jsp';
</script>

</body>
</html>