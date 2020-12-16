<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="style.css">
<style>
#btn1{
font-size:20px;
top:10px;
right:10px;
text-align:center;
padding :10px;
   position: absolute;
      display:block;
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Invalid Credentials</font></center>
	<% }
%>
<button onclick="location.href='home.jsp'" id="btn1" type="button">
         Back</button>
<div class="registerform">
<form  name="myform" action="adminwin.jsp" method="post">
<p>UserId</p>
<input type="text" name="ID" id="name"placeholder="Enter userID">
<p>Password</p>
<input type="password" id="name" name="PWD" placeholder="Enter Password">


<br>
<input type="submit" value="Login" id="sub">
</form>
</div>
</body>
</html>