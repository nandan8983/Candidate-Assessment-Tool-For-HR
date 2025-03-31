package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
public static Connection connect() {
	
	Connection con = null;
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
//		Class.forName("com.mysql.cj.jdbc.Driver");

//		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafhr","root","");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafhr?useSSL=false&serverTimezone=UTC", "root", "");

	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
	    if (con == null) {
	    	System.out.println("Not Connected!!");
	    }
	}

	
	
	
	
	
	return con;
	
}
}
