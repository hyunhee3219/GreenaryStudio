<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<meta charset="utf-8">
<%@ include file="./dbcon.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin_Update</title>
</head>
<body>
<%
	String update_id = request.getParameter("update_id");
	
	String sql = "SELECT user_id FROM semi_member WHERE user_id='"+update_id+"'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){ //해당 id가 있다면 update 
		String column = request.getParameter("update");
		String content = request.getParameter("content");
		
		String sql2 = "UPDATE semi_member SET "+column+"='"+content+"' WHERE user_id='"+update_id+"'";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.executeUpdate();
		
		out.println("<script>alert('"+update_id+"의 회원정보 수정이 완료되었습니다.'); location.replace('mem_admin.jsp');</script>");
	}
	else{ //해당 아이디가 없으면 update 안함
		out.println("<script>alert('해당 아이디가 없습니다. ID를 다시 확인해주세요'); location.replace('mem_admin.jsp');</script>");
	}
%>





</body>
</html>