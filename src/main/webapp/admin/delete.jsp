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
	String delete_re = request.getParameter("delete_re"); //Admin.jsp, Search.jsp에서 받아올 값
	
	String sql = "SELECT re_num FROM re_info WHERE re_num='"+delete_re+"'";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){ //삭제할 아이디가 DB에 있으면 삭제 후 Admin 화면으로 돌아감
		
		String sql2 = "DELETE FROM re_info WHERE re_num='"+delete_re+"'";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.executeUpdate();
		out.println("<script>alert('예약 내역 삭제가 완료되었습니다.'); location.replace('admin.jsp');</script>");
		
	}
	else{ //없으면 alert으로 경고를 주고 Admin 화면으로 돌아감
		out.println("<script>alert('해당 예약번호가 없습니다! 다시 확인해주세요.'); location.replace('admin.jsp');</script>");
	}
%>
</body>
</html>