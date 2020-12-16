<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body{
  background:url(car5.jpg);
 margin:0;
padding:0;
postion:fixed;
height:100%;
 background-repeat:no-repeat;
  background-size: cover;}
table{

width:100%;
border-collapse:collapse;
text-align:center;}
th{
background-color:blue;}
td,th{
border:2px solid #ddd;
padding:15px;
}
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
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Updated</font></center>
	<% }
%>
<%

if("invalid".equals(msg))
{
	%>
	<center> <font color="red" size=6> Not Updated</font></center>
	<% }
%>
<button onclick="location.href='home.jsp'" id="btn1" type="button">
         HOME</button>
<h2><center>All Customer Records</center></h1>
<table id="customers">
<tr>
<th>Name</th>
<th>Registeartion No</th>
<th>Type of vechile</th>
<th>Date</th>
<th>Mobile Num</th>
<th>Choice</th>
<th>PickUp Address</th>
<th>Remarks</th>
<th>Status</th>
<th>UpdateStatus</th>
</tr>
<tr>
<%
try{
	Connection con=null;

	   Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");

    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin_details");
    while(rs.next())
    { %>
    	<td><%=rs.getString(1)%></td>
    	<td><%=rs.getString(2)%></td>
    	<td><%=rs.getString(3)%></td>
    	<td><%=rs.getString(4)%></td>
    	<td><%=rs.getString(5)%></td>
    	<td><%=rs.getString(6)%></td>
    	<td><%=rs.getString(7)%></td>
    		<td><%=rs.getString(8)%></td>
    			<td><%=rs.getString(9)%></td>
    
    	<td><a href='updatestatus.jsp?u=<%=rs.getString(2)%>'>UpdateStatus</a></td>
    	</tr>
    	<% 
    }
}
catch(Exception e)
{
	System.out.print(e);
}
%>
</table>
</body>
</html>