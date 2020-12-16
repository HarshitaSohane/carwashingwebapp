<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"  href="style.css">
</head>
<body>
hi
<%

try{
	String reg=request.getParameter("u");
	Connection con=null;

	   Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");

    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin_details where RegisterationNo='"+reg+"'");
    while(rs.next())
    { %>
<div class="registerform">
<form action="updatestatusaction.jsp" method="post">
<p>RegisterationNo:</p>
<input type="text" id="name" name="RegNo" value="<%=rs.getString(2)%>">
<p>Status:</p>
<input type="text" name="Status" id="name" value="<%=rs.getString(8)%>">
<p>Remarks:</p>
<input type="text" name="Remarks" id="name" value="<%=rs.getString(9)%>">
<br>
<input type="submit" value="Save" id="sub"> 
</form>
</div>
<%}
    
   
}catch(Exception e)
{
	System.out.print(e);
}%>

</body>
</html>