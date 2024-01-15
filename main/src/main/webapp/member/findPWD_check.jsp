<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비번확인</title>
</head>
<body>
<% 

request.setCharacterEncoding("utf-8");

%>
<%
String findname = request.getParameter("findname");
String findID = request.getParameter("findID");
String hp = request.getParameter("hp");
String hp1 = null;
String hp2 = null;
String hp3 = null; 
if(hp.length() == 10) {
	hp1 = hp.substring(0,3);
	hp2 = hp.substring(3,6);
	hp3 = hp.substring(6,10);
} else if(hp.length() == 11) {
		hp1 = hp.substring(0,3);
		hp2 = hp.substring(3,7);
		hp3 = hp.substring(7,11);
	}

findDAO dao = new findDAO();
int ok_pwd = dao.pwdcheck(findname, findID, hp1, hp2, hp3);
System.out.println("ok_pwd = " + ok_pwd);

if(ok_pwd==1 ) {
	%>
	<script>
	alert("비밀번호를 변경합니다.");
	location.href='<%=request.getContextPath()%>/member/changePwd.jsp?user_id=<%=findID%>';
	</script>
	<%
	} else if(ok_pwd==2) {
		System.out.println("아이디 불일치");
		
	%>
	<script>
	location.href='<%=request.getContextPath()%>/member/findPWD.jsp';
	</script>
	<%
	} else if(ok_pwd==3) {
		System.out.println("정보 불일치");
		
	%>
	<script>
	alert("정보가 없습니다.")
	location.href='<%=request.getContextPath()%>/member/findPWD.jsp';
	</script>
	<% } %>
</body>
</html>