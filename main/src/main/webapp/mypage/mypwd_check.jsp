<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재비밀번호 확인</title>
</head>
<body>
<% 

request.setCharacterEncoding("utf-8");

%>
<%
String user_id = (String)session.getAttribute("user_id");
String user_pwd = request.getParameter("pwdh");

RegistDAO dao = new RegistDAO();
int pwd = dao.pwdCheck(user_id, user_pwd);
System.out.println("pwd= " + pwd);


if(pwd== 1) {
	session.setAttribute("change_pwd", user_id);
%>
<script>
alert("현재 비밀번호가 일치합니다. \n 비밀번호를 변경합니다.")
location.href='<%=request.getContextPath()%>/mypage/mynewpwd.jsp';
</script>
<%
} else if(pwd==2) {
	System.out.println("비밀번호불일치");
	
%>
<script>
alert("비밀번호가 일치하지 않습니다.")
location.href='<%=request.getContextPath()%>/mypage/mypwdchange.jsp';
</script>
<%
}
%>
</body>
</html>