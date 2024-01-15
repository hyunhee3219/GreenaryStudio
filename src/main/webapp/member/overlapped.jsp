<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.json.simple.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디확인</title>
</head>
<body>

<% 

Connection conn = null;


	String url = "jdbc:mysql://localhost:3306/semiproject";
	String did = "root";                     //MySQL에 접속을 위한 계정의 ID
	String pwd = "3219";            //MySQL에 접속을 위한 계정의 암호
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, did, pwd);

	//out.println("<h1>MySQL DB 연결 성공</h1>");

String id = request.getParameter("id");
//System.out.println(id);
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "SELECT * FROM semi_member WHERE user_id = '"+id+"'";
pstmt = conn.prepareStatement(sql);


rs = pstmt.executeQuery();

response.setContentType("application/json");

PrintWriter outt = response.getWriter();

JSONObject resultObj = new JSONObject();

if(rs.next())
{
	resultObj.put("result","true");
	out.print("true");
}
else
{
	resultObj.put("result","false");
	out.print("false");
}

//System.out.println(resultObj);

//outt.print(resultObj.toString());
%>

</body>
</html>