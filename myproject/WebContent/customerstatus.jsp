<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
margin-top:30px;
margin-left:400px;
text-align:center;
padding :10px;
   position: absolute;
      display:block;
      font-size:20px;

}
#btn2{
margin-top:30px;
margin-left:500px;
text-align:center;
padding :10px;
   position: absolute;
      display:block;
      font-size:20px;

}
</style>
</head>
<body>
<table id="customers">
<tr>
<th>Name</th>
<th>Registeration No</th>
<th>Type of vechile</th>
<th>Date</th>
<th>Mobile Num</th>
<th>Choice</th>
<th>PickUp Address</th>
<th>Remarks</th>
<th>Status</th>

</tr>
<tr>
<%
try{
	String reg=request.getParameter("RegNo");
	Connection con=null;

	   Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");
 
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin_details where RegisterationNo='"+reg+"'");
    if(rs.next()==false)
    {
    	   response.sendRedirect("checkstatus.jsp?msg=invalid");
    }
    else
    {
   do
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
    
    
    	</tr>
    	<% 
    }while(rs.next());
    }
}
catch(Exception e)
{
	System.out.print(e);
}
%>
</table>
<button onclick="location.href='checkstatus.jsp'" id="btn1" type="button">
         Back</button>
         <button onclick="location.href='home.jsp'" id="btn2" type="button">
         Home</button>
</body>
</html>