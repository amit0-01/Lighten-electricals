<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from fooditems");

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
<form action=calculation.jsp method=post>
<center>
<table border=1>
<tr>
<th>
id
</th>

<th>
name
</th>

<th>
cost
</th>
</tr>
<% while(rs.next()) {%>

<tr>
<td>
<%= rs.getInt("fid") %>
</td>

<td>
<%= rs.getString("fname") %>
</td>

<td>
<%= rs.getInt("fcost") %>
</td>

<td>
<input type=checkbox name=items value=<%=rs.getInt("fid") %> >
</td>
</tr>




<% } %>

</table>
<input type=submit value=Calculate Bill>
</center>
</form>
</div>

<div id=footer>


</div>
</body>
</html>