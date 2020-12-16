<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id=request.getParameter("RegNo");
String status=request.getParameter("Status");
String Remarks=request.getParameter("Remarks");
try{
	Connection con=null;

	   Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");

    PreparedStatement st=con.prepareStatement("update admin_details set Status='"+status+"',Remarks='"+Remarks+"' where RegisterationNo='"+id+"'");
//st.setString(8,"sthghtus");
//st.setString(9,"Remarks");
st.executeUpdate();

response.sendRedirect("viewtable.jsp?msg=valid");
}
catch(Exception e)
{out.print(id);
System.out.print(e);
	response.sendRedirect("viewtable.jsp?msg=invalid");	
}
%>
</body>
</html>