<%@ page import = "member.*" %>
<%@ page import = "reservation.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.sql.Date" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 예약 현황</title>
</head>
<body>
<h1>나의 예약현황</h1> 
<%

request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");
ReservationDAO dao = new ReservationDAO();

List<ReservationVO> list = dao.listRe(user_id);
out.println("<table border=1>");
out.println("<tr><td> 예약번호 </td><td>룸타입</td><td>예약날짜</td><td>예약시간</td><td>비고</td></tr>");
for(int i=0; i<list.size(); i++) {
	ReservationVO listvo = (ReservationVO) list.get(i);
	
	int re_num = listvo.getRe_num();
	String re_room = listvo.getRe_room();
	String re_date = listvo.getRe_date();
	String re_time = listvo.getRe_time();
	
	out.println("<tr><td>"+ re_num + " </td><td>" + re_room + "</td><td>" + re_date + "</td><td>" + re_time + "</td><td><a href='./myscheduleud.jsp?re_num=" + re_num + "'> 예약수정 </a> <br> <a href='./myscheduledel.jsp?&re_num=" + re_num + "' onclick='return delok();' > 예약취소 </a></td></tr>");
	}
	out.println("</table><form action='./mypage.jsp'><input type='submit' value='뒤로가기'></form>");
%>
</body>
<script >
	function delok() {
		if(!confirm("예약을 취소하시겠습니까?")) {
			
			return false;
		}
	}
</script>
</html>