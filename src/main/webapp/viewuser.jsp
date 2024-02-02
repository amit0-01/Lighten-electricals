<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.sql.*" %>



<!DOCTYPE html>
<html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from customer");

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

<center>
<table border=1>
<tr>
<th>
firstname
</th>

<th>
lastname
</th>

<th>
username
</th>

<th>
password
</th>
</tr>
<% while(rs.next()) {%>

<tr>
<td>
<%= rs.getString("firstname") %>
</td>

<td>
<%= rs.getString("lastname") %>
</td>

<td>
<%= rs.getString("username") %>
</td>
<td>
<%= rs.getString("password") %>
</td>
<td>
<form action=updateprocessuser.jsp>
<input type=submit value=Update>
 <input type=hidden name="id" value=<%=rs.getString("username") %>>
</form>
</td>

<td>
<form action=deleteuser.jsp>
<input type=submit value=Delete>
<input type=hidden name="id" value=<%=rs.getString("username") %>>
</form>
</td>
</tr>




<% } %>

</table>

</center>

</div>

<div id=footer>


</div>
</body>
</html>