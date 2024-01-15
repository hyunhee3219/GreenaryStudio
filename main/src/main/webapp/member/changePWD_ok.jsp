<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../dbcon.jsp" %>
<title>비밀번호 변경확인</title>
</head>
<body>

<%
		try {
		
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("pwd1");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "UPDATE semi_member SET user_pwd =? where user_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_pwd);
		pstmt.setString(2, user_id);
		try {
			pstmt.executeUpdate();
			session.removeAttribute("change_pwd");
			%> 
			<script>
			alert("<%=user_id%> 님의 비밀번호 변경 완료");
			location.href='<%=request.getContextPath()%>/index.jsp';
			</script>
			<% 
				} catch(Exception e) {
				e.printStackTrace();
				} finally {
				try {
				if(pstmt!=null&!pstmt.isClosed()) {
				pstmt.close(); }
				} catch(Exception e) {
				e.printStackTrace();
				} } } catch(Exception e) {
				e.printStackTrace(); }
				%>

		
<body>

</body>
</html>