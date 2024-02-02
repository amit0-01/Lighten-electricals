<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
#body{
background-image:url(images/add.jpg);
background-repeat: no-repeat;
background-size: 1500px 1000px;}
}
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
Welcome <%=session.getAttribute("name") %><br>
<a href="logout.jsp">LogOut</a>


</div>
<div id=login>
<center>
<a href="addnewitem.html">Add new Item</a><br>
<a href="update.jsp">Update Items</a>

</center>
</div>

<div id=footer>


</div>
</body>
</html>