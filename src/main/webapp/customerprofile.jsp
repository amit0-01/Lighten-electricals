<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body{
background-image:url(cart.jpg);
background-repeat: no-repeat;
background-size: 1500px 1000px;}
/*#header
{
background-color : blue;
height : 100px;
width : 1500px;
}*/


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
background-color : blue;
left : 500px;
width : 500px;
}
</style>
</head>
<body>
<div id=header>
Welcome <%=session.getAttribute("name") %>


</div>
<div id=login>
<form action=Register method=post>
<center>
<a href="view.jsp">View Electrical Items</a>
</center>
</form>
</div>

<div id=footer>


</div>
</body>
</html>