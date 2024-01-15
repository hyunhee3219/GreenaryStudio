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
		String id=request.getParameter("target");
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM semi_member WHERE user_id='" + id + "'";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
	%>
	
	<script>
		alert("<%=id%>님의 정보 삭제가 완료되었습니다.");
		window.location.href="./mem_admin.jsp";
	</script>
	
</body>
</html>
