package edu.asu.se.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import edu.asu.se.utils.UserType;

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

	public UserType authenticateAndGetType(String userName, String password) {
		UserType userType = null;
		try {
			Connection con = dataSource.getConnection();
			String sql = "SELECT USERTYPE FROM LOGIN WHERE USERNAME=? AND PWD=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, password);

			ResultSet rs = pstmt.executeQuery();
			rs.next();
			// TODO: A better way of handling when username and password
			// mismatch
			userType = UserType.getType(rs.getString("usertype"));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return userType;
	}
}
