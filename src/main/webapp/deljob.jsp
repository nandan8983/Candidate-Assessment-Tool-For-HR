<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE JOB</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="main.DbConnection" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
Connection con = DbConnection.connect();
PreparedStatement pstmt = con.prepareStatement("DELETE FROM `job` WHERE ID=?");
pstmt.setInt(1, id);
int i = pstmt.executeUpdate();
if(i>0) {
	response.sendRedirect("deletejob.jsp");
}else {
	response.sendRedirect("404.html");
}







%>
</body>
</html>