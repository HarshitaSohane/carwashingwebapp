<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="style.css">
</head>
<body>



<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Sorry, please register first</font></center>
	<% }
%>
<button onclick="location.href='index.jsp'" id="btn1" type="button">
         Back</button>
<div class="registerform">
<form action="customerstatus.jsp" method="post" >
<p>Registeration No:</p>
<input type="text" id="name" name="RegNo" placeholder="Enter Registeration No">
<br>
<input type="submit" value="Check" id="sub">
</form>
</div>


</body>
</html>