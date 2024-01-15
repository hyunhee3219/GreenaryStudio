<%@ page import = "member.*" %>
<%@ page import = "reservation.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
 <%@ page import="java.io.*,java.text.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservation insert</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

ReservationDAO dao = new ReservationDAO();

String user_id = request.getParameter("user_id");
String re_date = request.getParameter("re_date");
String re_room = request.getParameter("re_room");
String re_time = request.getParameter("re_time");



ReservationVO vo = new ReservationVO();
int ok = dao.checkre(vo);
if(ok==0) {
	System.out.println("중복된 예약정보");
	
%>
<script>
alert("예약이 중복되었습니다.")
location.href='<%=request.getContextPath()%>/reservationForm.jsp';
</script>
<%
} else {
vo.setUser_id(user_id);
vo.setRe_date(re_date);
vo.setRe_room(re_room);
vo.setRe_time(re_time);

dao.insert(vo);
System.out.println("예약 완료");
%>
<script>
alert("예약이 완료되었습니다.")
location.href='<%=request.getContextPath()%>/index.jsp';
</script>
<%
} 
%>

</body>
</html>