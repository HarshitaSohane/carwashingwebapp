<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style>
body{
background-image:url(car1.jpg);
  background-repeat:no-repeat;
  height: 100%;
  display:grid;
 
 
  background-size: cover;
  }
  #btn1,#btn2{display:inline;}
  #btn1{
width: 200px;
height: 40px;
margin-top:300px;
font-size:18px;
background-color:red;
color:white;


}

#btn2{
width: 200px;
height: 40px;
font-size:18px;
background-color:red;
color:white;
}
  
</style>
</head>
<body>
<footer>
<input type="button" onclick="window.location.href='adminLogin.jsp';" value="Admin" id="btn1" >

<input type="button" value="Customer" id="btn2" onclick="window.location.href='index.jsp';">
</footer>
</body>
</html>