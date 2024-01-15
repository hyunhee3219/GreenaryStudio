<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page session="true"%>
<%@ include file="./dbcon.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<!--          meta 선언          -->
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width", initial-scale="1"> 

	<!--          link 선언          -->
	<link rel="stylesheet" href="./css/mystyle.css">
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


<style>

div#wrapper{
width : 95%;
margin : 25px;
height : 100%;
}
header{
width : 100%;
height : 150px;
text-align : center;
margin-bottom : 10px;
font-size : 24pt;
}
section{
width : 100%;
}


button {
    margin: 20px;
}

body {
    text-align: center;
}

.main {
    border: none;
    font-size: 30px;
    font-weight: 600;
    background: white;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline {
    border: 3px solid aliceblue;
    color: #1e6b7b;
}

.w-btn-indigo-outline:hover {
    color: #1e6b7b;
    background: aliceblue;
}

.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}

.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}

.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}

.text1 {
	padding: 20px;
	font-size: 18px;
}

.text2 {
	padding: 20px 150px;
	font-size: 20px;
	text-align: left;
	margin-left: 150px;

</style>

<script>

function main() {
	var f = document.myForm;
	f.action = "../index.jsp";
	f.submit();
}

function res_info() {
	var f = document.myForm;
	f.action = "admin.jsp";
	f.submit();
}

function mem_info() {
	var f = document.myForm;
	f.action = "mem_admin.jsp";
	f.submit();
}


function reUpdate(){
	var content = document.getElementById('content').value;
	if(!content){
		alert('변경할 내용을 입력하세요!');
		return false;
	}
	else { return true;}
}

//확인창을 띄워서 확인을 누르면 회원이 삭제되도록
function reDelete(){
	if(!confirm('예약을 삭제하시겠습니까?')){
		return false;
	}
	else{ 
		return true;
	}
}

</script>


<title>Greenery Studio Admin page</title>
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
				<li><a href="../guide.jsp">예약안내</a>
				<li><a href="../schedule.jsp">예약하기</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../member/login.jsp">로그인</a></li>
						<li><a href="../member/regist.jsp">회원가입</a></li>
						<li class="active"><a href="login.jsp">관리자페이지</a></li>
					</ul>
				</li>
			</ul>
		</div>
 	</nav>	
 	
</head>
<body>

 	<form name="myForm" method=get >

<button class="main" type="button" onclick="main();">Greenery Studio</button>
<br>
<button class="w-btn w-btn-green" type="button" onclick="res_info();">예약 정보 조회</button>
<button class="w-btn w-btn-indigo" type="button" onclick="mem_info();">회원 정보 조회</button>

</form>



 	<div id="wrapper">


	<form action="delete.jsp" onSubmit="return reDelete();"> 예약 삭제 
	<input type="text" name="delete_re" placeholder="삭제할 예약 번호" style="width:170px"/>
	<input type="submit" value="예약 삭제"/></form><br> 

	<form action="update.jsp" onSubmit="return reUpdate();">예약 변경
	<input type="text" name="update_re" placeholder="변경할 예약 번호" style="width:170px"/>
	<select name="update" style="height:20px">
	
	<script>
		var options = ['예약 날짜','룸 타입','예약 시간'];
		var value = ['re_date','re_room','re_time']
		for(var i=0;i<3;i++){
			document.write("<option value='"+value[i]+"'>"+options[i]+"</option>");
		}
	</script>
	</select>
	<input type="text" name="content" id="content" placeholder="변경할 내용을 입력하세요." style="width:170px"/>
	<input type="submit" value="예약 정보 변경"/>
	</form>

<br>


<section> <!-- 단어 기준으로 줄바꿈하기 위함 -->
<table border=1 style="width:100%;word-break:keep-all">
<tr style="text-align:center;background-color:lightgray"><td>아이디</td><td>이름</td><td>휴대폰번호</td><td>예약번호</td><td>예약날짜</td><td>룸 타입</td><td>예약시간</td></tr>
<%
String sql = "SELECT * FROM semi_member INNER JOIN re_info on semi_member.re_num=re_info.re_num";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();


while(rs.next()){
String id = rs.getString("user_id");
String hp1 = rs.getString("hp1");
String hp2 = rs.getString("hp2");
String hp3 = rs.getString("hp3");
String name = rs.getString("user_name");
String gender = rs.getString("gender");
String renum = rs.getString("re_num");
String reroom = rs.getString("re_room");
String redate = rs.getString("re_date");
String retime = rs.getString("re_time");
String hp = hp1 + "-" + hp2 + "-" + hp3;
%>

<tr><td><%= id%></td><td><%= name %></td><td><%= hp %></td><td><%= renum %></td><td><%= redate %></td><td><%= reroom %></td><td><%= retime %></td>
</tr>

<% } out.println("</table>");%>
</table>
</section>

</div>

</body>
</html>