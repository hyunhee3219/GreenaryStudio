<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입확인</title>
</head>
<body>
<% 

request.setCharacterEncoding("utf-8");

%>

<%
String command = request.getParameter("command");
RegistDAO dao = new RegistDAO();
if(command!=null && command.equals("addMember")) {
String id = request.getParameter("huser_id");
String pwd = request.getParameter("pwd1");
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

vo.setUser_id(id); vo.setUser_pwd(pwd);
vo.setUser_name(name); vo.setGender(gender);
vo.setBirthYear(birth_Year);
vo.setBirthMonth(birth_Month); vo.setBirthDay(birth_Day);
vo.setCalendar(calendar); 
vo.setHp1(hp1); vo.setHp2(hp2); vo.setHp3(hp3);
vo.setSmsyn(smsyn); vo.setMail_ID(mail_id);
vo.setMail_Domain(mail_domain); vo.setEmailyn(emailyn);
vo.setZipcode(zipcode); vo.setRoadAddr(roadAddr);
vo.setJibunAddr(jibunAddr); vo.setNamujiAddr(namujiAddr);


dao.insert(vo);

%>
<script>
alert("회원가입이 완료되었습니다.");
window.location.href='../index.jsp';
</script>
<% 
} else if(command!=null && command.equals("delMember")) {
	String id = request.getParameter("user_id");
	dao.delMember(id);
	session.invalidate();
%>
	<script>
	alert("회원탈퇴 완료 \n 안녕히 가세요.");
	window.location.href='./index.jsp';
	</script>
<% 
}
%>
</body>


</html>