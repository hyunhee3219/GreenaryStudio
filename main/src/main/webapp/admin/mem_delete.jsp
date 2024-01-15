<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<meta charset="utf-8">
<%@ include file="./dbcon.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin_Delete</title>
</head>
<body>
	
	
<%
	String delete_id = request.getParameter("delete_id"); //Admin.jsp, Search.jsp에서 받아올 값
	
	String sql = "SELECT user_id FROM semi_member WHERE user_id='"+delete_id+"'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){ //삭제할 아이디가 DB에 있으면 삭제 후 Admin 화면으로 돌아감
		
		String sql2 = "DELETE FROM semi_member WHERE user_id='"+delete_id+"'";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.executeUpdate();
		out.println("<script>alert('회원 삭제가 완료되었습니다.'); location.replace('mem_admin.jsp');</script>");
		
	}
	else{ //없으면 alert으로 경고를 주고 Admin 화면으로 돌아감
		out.println("<script>alert('해당 ID의 회원은 없습니다! 다시 확인해주세요.'); location.replace('mem_admin.jsp');</script>");
	}
%>
</body>
</html>