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
<title>예약현황</title>
</head>
<body>
<h1>예약현황</h1> 
<%

request.setCharacterEncoding("utf-8");
AdminReservationDAO dao = new AdminReservationDAO();

List<AdminReservationVO> list = dao.adminreservationList();

out.println("<table border=1>");
out.println("<tr><td> 예약번호 </td><td>룸타입</td><td>예약날짜</td><td>예약시간</td><td>아이디</td><td>이름</td><td>핸드폰번호</td><td>이메일</td><td>비고</td></tr>");
for(int i=0; i<list.size(); i++) {
	AdminReservationVO listvo = (AdminReservationVO) list.get(i);
	
	int re_num = listvo.getRe_num();
	String re_room = listvo.getRe_room();
	String re_date = listvo.getRe_date();
	String re_time = listvo.getRe_time();
	String user_id = listvo.getUser_id();
	String user_name = listvo.getUser_name();
	String hp1 = listvo.getHp1(); String hp2 = listvo.getHp2(); String hp3 = listvo.getHp3();
	String mail_id = listvo.getMail_ID(); String mail_domain = listvo.getMail_Domain();
	
	String hp = hp1 + "-" + hp2 + "-" + hp3;
	String email = mail_id + "@" + mail_domain;
	
	out.println("<tr><td>"+ re_num + " </td><td>" + re_room + "</td><td>" + re_date + "</td><td>" + re_time + "</td><td>" + user_id + "</td><td>" + user_name + "</td><td>" + hp + "</td><td>" + email + "</td><td><a href='./adminupdateschedule.jsp?re_num=" + re_num + "'> 예약수정 </a> <br> <a href='./admindelschedule.jsp?&re_num=" + re_num + "' onclick='return delok();' > 예약취소 </a></td></tr>");
	}
	out.println("</table><form action='./mypage.jsp'><input type='submit' value='뒤로가기'></form>");
%>

</body>
</html>