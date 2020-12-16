<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{
margin:0;
padding:0;
}
body{
  background:url(admin.jpg);
 margin:0;
padding:0;
postion:fixed;
height:100%;
 
  background-size: cover;}
 
ul{
height:60px;
background-color:black;
}
li{
display:inline-block;
margin-left:330px;

text-decoration:none;
font-size:30px;
padding:20px;


}

a{
text-decoration:none;
color:#FFC433;
text-align:center;
font-weight:bold;


text-tranform:uppercase;}
a:hover{
background-color:white;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<%
String id=request.getParameter("ID");
String pwd=request.getParameter("PWD");
if(("admin".equals(id)) && ("admin".equals(pwd)))
{
	//response.sendRedirect("adminwin.jsp");
//	out.print("right");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
	out.print("wrong");
}
%>
<body>

<ul>
<li><a href="viewtable.jsp">View</a></li>

</ul>
</body>
</html>