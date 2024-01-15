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
	String update_re = request.getParameter("update_re");
	
	String sql = "SELECT re_num FROM re_info WHERE re_num='"+update_re+"'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){ //해당 id가 있다면 update 
		String column = request.getParameter("update");
		String content = request.getParameter("content");
		
		String sql2 = "UPDATE re_info SET "+column+"='"+content+"' WHERE re_num='"+update_re+"'";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.executeUpdate();
		
		out.println("<script>alert('"+update_re+"의 예약 정보 수정이 완료되었습니다.'); location.replace('admin.jsp');</script>");
	}
	else{ //해당 아이디가 없으면 update 안함
		out.println("<script>alert('해당 예약번호가 없습니다. 다시 확인해주세요'); location.replace('admin.jsp');</script>");
	}
%>





</body>
</html>