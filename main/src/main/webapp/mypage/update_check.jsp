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
<title>업데이트</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
RegistDAO dao = new RegistDAO();
String user_id = (String)session.getAttribute("user_id");
String name = request.getParameter("user_name");
String gender = request.getParameter("gender");
String birth_Year = request.getParameter("birth_Year");
String birth_Month = request.getParameter("birth_Month");
String birth_Day = request.getParameter("birth_Day");
String calendar = request.getParameter("calendar");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp3 = request.getParameter("hp3");
String smsyn = request.getParameter("smsyn");
String mail_id = request.getParameter("mail_id");
String mail_domain = request.getParameter("mail_option");
String emailyn = request.getParameter("emailyn");
String zipcode = request.getParameter("zipcode");
String roadAddr = request.getParameter("roadAddress");
String jibunAddr = request.getParameter("jibunAddress");
String namujiAddr = request.getParameter("namujiAddress");

MemberVO vo = new MemberVO();
vo.setUser_id(user_id);
vo.setUser_name(name); vo.setGender(gender);
vo.setBirthYear(birth_Year);
vo.setBirthMonth(birth_Month); vo.setBirthDay(birth_Day);
vo.setCalendar(calendar); 
vo.setHp1(hp1); vo.setHp2(hp2); vo.setHp3(hp3);
vo.setSmsyn(smsyn); vo.setMail_ID(mail_id);
vo.setMail_Domain(mail_domain); vo.setEmailyn(emailyn);
vo.setZipcode(zipcode); vo.setRoadAddr(roadAddr);
vo.setJibunAddr(jibunAddr); vo.setNamujiAddr(namujiAddr);

int result = dao.updateMember(vo);

if(result == 1) {
	%>
	<script>
		alert("회원정보 수정이 완료되었습니다.");
		window.location.href='./mypage.jsp';
	</script>
	<% 	
} else {
%>

<script>
	alert("에러, 회원정보 수정을 완료하지 못했습니다. \n 다시 시도해주세요");
	window.location.href='./update.jsp';
	</script>
<% 
}
%>
</body>
</html>