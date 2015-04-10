
package edu.asu.se.model;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
	private DataSource dataSource;
	
	public LoginDAO() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx
					.lookup("java:comp/env/jdbc/HospitalDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}


public String valdateUser(String userName, String password)
{
	String userType=null;
	try
	{
	Connection con = dataSource.getConnection();
	String sql="SELECT USERTYPE FROM LOGIN WHERE USERNAME=? AND PWD=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1, userName);
	pstmt.setString(2, password);
	
	ResultSet rs=pstmt.executeQuery();
	rs.next();	
	userType=rs.getString("usertype");
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	
	return userType;
}
}
