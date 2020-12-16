<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<%    
String name=request.getParameter("Name");
String reg_no=request.getParameter("RegNo");
String type=request.getParameter("type");
String date=request.getParameter("dt");
String m_num=(request.getParameter("Phone_num"));
String ch=request.getParameter("choice");
String addr=request.getParameter("Address");
try{
Connection con=null;

	   Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");
    
 

     // String sql1=  "insert into admin_details(Name,Type_of_vehcile,RegisterationNo,App_Date,PhoneNo,Pick_up,Pick_upAddress) values(name,type,reg_no,date,m_num,ch, addr)";
    
  try{   String sql="insert into user_details values(?,?,?,?,?,?,?)";
PreparedStatement pst= con.prepareStatement(sql);



//pst.setInt(1,6);

pst.setString(1,name);
pst.setString(2,reg_no);
pst.setString(3,type);

pst.setString(4,date);
pst.setString(5,m_num);
pst.setString(6,ch);
pst.setString(7,addr);
pst.executeUpdate(); // Insert, Delete & Update
pst.close();
  }catch(Exception e)
  {
	  System.out.print(e);
  }

String sql1="insert into admin_details values(?,?,?,?,?,?,?,?,?)";
PreparedStatement pst1= con.prepareStatement(sql1);

pst1.setString(1,name);
pst1.setString(2,reg_no);
pst1.setString(3,type);

pst1.setString(4,date);
pst1.setString(5,m_num);
pst1.setString(6,ch);
pst1.setString(7,addr);
pst1.setString(8,"NoRemarks");
pst1.setString(9,"NotAvailable");
pst1.executeUpdate(); // Insert, Delete & Updat
pst1.close();



response.sendRedirect("index.jsp?msg=valid");



}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
	//System.out.print(e);
}
out.print("Record entered");


%>

