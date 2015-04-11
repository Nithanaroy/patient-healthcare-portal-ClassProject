package edu.asu.se.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//import com.sun.crypto.provider.RSACipher;

public class DoctorDAO {

	private DataSource dataSource;

	/**
	 * Fetch the connection string
	 */
	public DoctorDAO() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx
					.lookup("java:comp/env/jdbc/HospitalDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Doctor> getAllDoctors() {
		ArrayList<Doctor> doctorList = new ArrayList<Doctor>();

		try {
			Connection con = dataSource.getConnection();

			String searchDoctorSql = "SELECT username, firstname, lastname, speciality, successrate from doctor";
			PreparedStatement ps = con.prepareStatement(searchDoctorSql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Doctor d = new Doctor(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5));

				doctorList.add(d);
			}
		} catch (SQLException exp) {
			exp.printStackTrace();

		}
		return doctorList;
	}

	public Doctor findDoctorByUsername(String username) {
		Doctor d = null;

		try {
			Connection con = dataSource.getConnection();

			String searchDoctorSql = "SELECT username, firstname, lastname, speciality, successrate from doctor where username = '"
					+ username + "'";
			PreparedStatement ps = con.prepareStatement(searchDoctorSql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Doctor(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5));
			}
		} catch (SQLException exp) {
			exp.printStackTrace();

		}
		return d;
	}
}
