<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./dbcon.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<%
	
		String renum = request.getParameter("target");
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM re_info WHERE re_num='" + renum + "'";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
	%>
	
	<script>
		alert("예약 내역 삭제가 완료되었습니다.");
		window.location.href="./admin.jsp";
	</script>
	
</body>
</html>
