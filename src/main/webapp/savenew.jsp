<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
stmt.executeUpdate("insert into fooditems values('"+request.getParameter("id")+"','"+request.getParameter("name")+"','"+request.getParameter("cost")+"')");
response.sendRedirect("added.jsp");
%>

</body>
</html>