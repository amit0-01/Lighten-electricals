<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from fooditems where fid='"+request.getParameter("id")+"'");
rs.next();
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
#header
{
background-color : green;
height : 100px;
width : 1500px;
}


#footer
{
background-color : green;
height : 100px;
width : 1500px;
position : relative;
top : 400px;
}

#login{
top : 200px;
height : 300px;
width : 300px;
position : relative;
background-color : green;
left : 500px;
width : 500px;
}
</style>
</head>
<body>
<div id=header>


</div>
<div id=login>
<form action=updatefinal.jsp>
<center>
<table border=1>
<tr>
<td>
id
</td>

<td>
<input type=text name=fid value=<%= rs.getInt("fid") %>>
</td>
</tr>

<tr>
<td>
name
</td>

<td>
<input type=text name=fname value=<%= rs.getString("fname") %>>
</td>
</tr>

<tr>
<td>
cost
</td>

<td>
<input type=text name=fcost value=<%= rs.getInt("fcost") %>>
</td>
</tr>







</table>
<input type=submit value=Update>
</center>
</form>
</div>

<div id=footer>


</div>
</body>
</html>