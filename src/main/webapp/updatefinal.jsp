<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
stmt.executeUpdate("update fooditems set fname='"+request.getParameter("fname")+"',fcost='"+request.getParameter("fcost")+"' where fid='"+request.getParameter("fid")+"'");
response.sendRedirect("update.jsp");
%>