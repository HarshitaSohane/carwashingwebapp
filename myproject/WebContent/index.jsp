S<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
    $( "#calendar" ).datepicker();
  } );
</script>
<style>
ul{
height:30px;
background-color:grey;
}
li{
display:inline-block;
margin-left:10px;
padding:5px;
text-decoration:none;
font-size:20px;
color:white;
}

a{
text-decoration:none;
color:white;
font-weight:bold;}
a:hover{
background-color:red;}
h3{
color:black;
font-weight:bold;

}
#home{
float:right;
margin-right:10px;}

</style>

</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Form Submitted</font></center>
	<% }
%>
<%

if("invalid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Form not Submitted,due to some reason</font></center>
	<% }
%>

<ul>
<li><a href="checkstatus.jsp">ShowStatus</a></li>
<li id="home"><a href="home.jsp">Home</a></li>


</ul>


<div class="registerform">
<form action="submitrequest.jsp" method="post">
<h2><center>Registeration Form</center></h2>
<p>Name:</p>
<input type="text" name="Name" id="name"placeholder="Enter name" required>
<p>Registeration No:</p>
<input type="text" id="name" name="RegNo" placeholder="Enter Registeration No" required>
<p>Type of vehcile:</p>


<select id="ph" name="type">
<option value="Two wheeler">Two wheeler</option>
<option value="Four wheeler">Four wheeler</option>
</select>
<p>Appointment Date:</p>
<input type="date"  name="dt"id="calendar" placeholder="Enter date" required>
<p>Phone No:</p>
<input type="text"  name="Phone_num"id="name" placeholder="Enter phone" maxlength="10" required>
<p>Pick up:</p>
<input type="radio" name="choice" value="Yes" checked><label>Yes</label>
<input type="radio" name="choice" value="No"><label>No</label>
<p>Pickup Address</p>
<input type="text" name="Address" id="name" placeholder="Enter address">
<br>
<input type="submit" value="Submit" id="sub">


</form>
</div>

</body>
</html>