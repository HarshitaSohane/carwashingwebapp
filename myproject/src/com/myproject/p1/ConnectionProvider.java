package com.myproject.p1;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionProvider {

	public static  Connection getConn() {
		// TODO Auto-generated method stub
		try {
		   Class.forName("com.mysql.cj.jdbc.Driver");
	          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_wash","root","1029384756");
	          return con;
		}
		catch(Exception e)
		{
			System.out.print("Connection");
			return null;
		}
	  

	}

}
