<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디확인</title>
</head>
<body>
<% 

request.setCharacterEncoding("utf-8");

%>
<%
String findname = request.getParameter("findname");
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

int ok1 = dao.idcheck(findname, hp1, hp2, hp3);
System.out.println("ok = " + ok1);


if(ok1== 1) {
	String find_id = dao.findId(findname, hp1, hp2, hp3);
	//System.out.println(find_id);

%>
<script>
alert("회원님의 아이디는 <%=find_id%>입니다.");
location.href='<%=request.getContextPath()%>/member/index.jsp';
</script>
<%
} else if(ok1==2) {
	System.out.println("이름 불일치");
	
%>
<script>
alert("이름정보가 다릅니다.")
location.href='<%=request.getContextPath()%>/member/findID.jsp';
</script>
<%
} else if(ok1==3) {
	System.out.println("휴대전화 정보 불일치");
	
%>
<script>
alert("휴대전화 정보가 없습니다.")
location.href='<%=request.getContextPath()%>/member/findID.jsp';
</script>
<% } 

%>
</body>
</html>