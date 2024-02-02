<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
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

<%

int cost=0;
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
Statement stmt= conn.createStatement();
ResultSet rs = null;

%>
<%
String data[]=request.getParameterValues("items");

 for(int i=0 ; i<data.length ; i++)
{
	
	rs=stmt.executeQuery("select fcost from fooditems where fid='"+data[i]+"'");
	rs.next();
cost=cost+rs.getInt("fcost");
}

%>
<div id=header>


</div>
<div id=login>
<h1>Your bill is Rs : <%= cost %> </h1>
<a href="logout.jsp">Pay bill confirm</a>
</div>

<div id=footer>


</div>


</body>
</html>