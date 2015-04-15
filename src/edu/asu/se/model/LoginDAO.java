package edu.asu.se.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import edu.asu.se.utils.UserType;

public class LoginDAO {

	private DataSource dataSource;
	private Connection con = null;

	// Indicates whether the connection is obtained in class or someone shared their connection
	private boolean isPublicConnection = false;

	public LoginDAO() {
		setDataSource();
	}

	public LoginDAO(Connection con) {
		this.con = con;
		isPublicConnection = true;
	}

	private void setDataSource() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/HospitalDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public int loginPatient(Patient p) {
		int newPatientId = -1;
		try {
			if (con == null)
				con = dataSource.getConnection();

			String loginSql = "INSERT INTO login (username,pwd,usertype)" + "VALUES ('" + p.getUserName() + "','" + p.getPassword() + "','"
					+ p.getUserType() + "')";

			System.out.println(loginSql);

			PreparedStatement ps = con.prepareStatement(loginSql, Statement.RETURN_GENERATED_KEYS);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();

			if (rs.next()) {
				newPatientId = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (!isPublicConnection)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return newPatientId;
	}

	public UserType authenticateAndGetType(String userName, String password) {
		UserType userType = null;
		try {
			if (con == null)
				con = dataSource.getConnection();
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
		} finally {
			if (!isPublicConnection)
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

		return userType;
	}
}
