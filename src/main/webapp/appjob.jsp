<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="main.DbConnection" %>
<%int id = Integer.parseInt(request.getParameter("id"));
Connection con = DbConnection.connect();

PreparedStatement pstmt = con.prepareStatement("UPDATE `candidate` SET `Status`=? WHERE CID=?");
pstmt.setString(1, "Approved");
pstmt.setInt(2, id);
int i = pstmt.executeUpdate();
if(i>0) {
	response.sendRedirect("shortlistcan.jsp");
}else {
	response.sendRedirect("404.html");
}







%>
</body>
</html>