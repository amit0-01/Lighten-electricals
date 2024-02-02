<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from customer where username='"+request.getParameter("id")+"'");
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
<form action=updatefinaluser.jsp>
<center>
<table border=1>
<tr>
<td>
firstname
</td>

<td>
<input type=text name=firstname value=<%= rs.getString("firstname") %>>
</td>
</tr>

<tr>
<td>
lastname
</td>

<td>
<input type=text name=lastname value=<%= rs.getString("lastname") %>>
</td>
</tr>

<tr>
<td>
username
</td>

<td>
<input type=text name=username value=<%= rs.getString("username") %>>
</td>
</tr>

<tr>
<td>
password
</td>

<td>
<input type=text name=password value=<%= rs.getString("password") %>>
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