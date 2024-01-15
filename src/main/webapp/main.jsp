 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h1> 로그인 </h1>
<table>
<form name ="frmLogin" method="post" action="./login_check.jsp">
<tr>
<td>아이디 </td> 
<td><input type="text" name="user_id"></td></tr>
<tr>
<td>비밀번호 </td>
<td><input type="password" name="user_pw"></td></tr>
<tr>
<td></td>
<td><input type="submit" value="로그인">
<input type="reset" value="초기화"></form></td></tr>
</table>
<table><tr>
<form action="./regist.jsp"> <input type="submit" value="회원가입">	</form>
<form action="./findID.jsp"> <input type="submit" value="아이디찾기">	</form>
<form action="./findPWD.jsp"> <input type="submit" value="비밀번호찾기">	</form></tr>
</table>


</body>
</html>