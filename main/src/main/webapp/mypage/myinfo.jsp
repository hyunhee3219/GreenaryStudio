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
<title>마이페이지</title>

<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel = "stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/style_index.css">

	<!--          script 선언          -->
	<script src="js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/d75ead5752.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="./js/script.js"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<title>Greenery Studio</title>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
				<span class = "icon-bar"></span>	
			</button>
			<a class = "navbar-brand" href="../index.jsp">Greenery Studio</a>
		</div>
		
		<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../guide/guide.jsp">예약안내</a>
				<li><a href="bbs.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../member/login.jsp">로그인</a></li>
						<li class="active"><a href="../member/regist.jsp">회원가입</a></li>
						<li><a href="../admin/login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String user_id = (String)session.getAttribute("user_id");

LoginDAO dao = new LoginDAO();
List<MemberVO> list = dao.listMembers(user_id);

for(int i=0; i<list.size(); i++) {
	MemberVO listvo = (MemberVO) list.get(i);
	
	String uid = listvo.getUser_id();
	String pwd = listvo.getUser_pwd();
	String name = listvo.getUser_name();
	String gender = listvo.getGender();
	String birthy = listvo.getBirthYear();
	String birthm = listvo.getBirthMonth();
	String birthd = listvo.getBirthDay();
	String cal = listvo.getCalendar();
	String hp1 = listvo.getHp1();
	String hp2 = listvo.getHp2();
	String hp3 = listvo.getHp3();
	String smsyn = listvo.getSmsyn();
	String mail_id = listvo.getMail_ID();
	String mail_domain = listvo.getMail_Domain();
	String emailyn = listvo.getEmailyn();
	String zipcode = listvo.getZipcode();
	String roadAddr = listvo.getRoadAddr();
	String jibunAddr = listvo.getJibunAddr();
	String namujiAddr = listvo.getNamujiAddr();
	Date joinDate = listvo.getJoinDate();
	

	String birth = birthy + "년 " + birthm + "월 " + birthd + "일 (" + cal + ")";
	String email = mail_id + "@" + mail_domain;
	String hp = hp1 + "-" + hp2 + "-" + hp3;
	
	out.println("<h1>마이페이지</h1> <table border=1>");
	out.println("<tr><td> 아이디 </td><td>" + uid + "</td></tr>");
	out.println("<tr><td> 비밀번호 </td><td>" + pwd + "</td></tr>");
	out.println("<tr><td> 이름 </td><td>" + name + "</td></tr>");
	out.println("<tr><td> 성별 </td><td>" + gender + "</td></tr>");
	out.println("<tr><td> 생년월일 </td><td>" + birth + "</td></tr>");
	out.println("<tr><td> 핸드폰번호 </td><td>" + hp + "</td></tr>");
	out.println("<tr><td> sms수신여부 </td><td>" + smsyn + "</td></tr>");
	out.println("<tr><td> 이메일주소 </td><td>" + email + "</td></tr>");
	out.println("<tr><td> 메일수신여부 </td><td>" + emailyn + "</td></tr>");
	out.println("<tr><td> 우편번호 </td><td>" + zipcode + "</td></tr>");
	out.println("<tr><td> 도로명주소 </td><td>" + roadAddr + "</td></tr>");
	out.println("<tr><td> 지번주소 </td><td>" + jibunAddr + "</td></tr>");
	out.println("<tr><td> 상세주소 </td><td>" + namujiAddr + "</td></tr>");
	out.println("<tr><td> 가입일자 </td><td>" + joinDate + "</td></tr>");
	out.println("<tr><td> 비고</td> <td> <a href='./update.jsp?user_id=" + uid + "'> 정보수정 </a> <br> <a href='./regist_check.jsp?command=delMember&user_id=" + uid + "' onclick='return delok();' > 회원탈퇴 </a></td></tr>");

}

out.println("</table><form action='../index.jsp'><input type='submit' value='메인페이지가기'></form>");

%>


</body>
<script >
	function delok() {
		if(!confirm("삭제하시면 되돌릴 수 없습니다. \n 정말로 삭제하시겠습니까?")) {
			
			return false;
		}
	}
</script>
</html>