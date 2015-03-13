package edu.asu.se.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class PatientDAO {

	private DataSource dataSource;

	/**
	 * Fetch the connection string
	 */
	public PatientDAO() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx
					.lookup("java:comp/env/jdbc/HospitalDB");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Adds a new patient to patient table
	 * 
	 * @param p
	 *            Patient object having all required attributes to save to DB
	 * @return patient object if created, else null
	 */
	public Patient addPatient(Patient p) {
		try {
			Connection con = dataSource.getConnection();
			String sql = "INSERT INTO patient (firstname, lastname) "
					+ "VALUES ('" + p.getFirstName() + "', '" + p.getLastName()
					+ "');";
			PreparedStatement ps = con.prepareStatement(sql,
					Statement.RETURN_GENERATED_KEYS);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			int newPatientId = 0;
			if (rs.next()) {
				newPatientId = rs.getInt(1);
			} else {
				// do what you have to do
			}
			rs.next();

			con.close();
			return findPatient(newPatientId);
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return null;
	}

	public Patient findPatient(int id) {
		Patient e = null;
		try {
			Connection con = dataSource.getConnection();
			String sql = "select * from patient where id  = " + id;
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e = new Patient(rs.getString(1), rs.getString(2), rs.getString(3),null,null,null,null,null,null);
			}
			con.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return e;
	}
	//
	// public List<Patient> findByDesignation(String designation) {
	// List<Patient> employees = new LinkedList<Patient>();
	// try {
	// Connection con = dataSource.getConnection();
	// String sql = "select * from Employee where Designation  = '"
	// + designation + "'";
	// PreparedStatement ps = con.prepareStatement(sql);
	// ResultSet rs = ps.executeQuery();
	// while (rs.next()) {
	// employees.add(new Patient(rs.getInt(1), rs.getString(2), rs
	// .getString(3), rs.getFloat(4)));
	// }
	// con.close();
	// } catch (SQLException exp) {
	// exp.printStackTrace();
	// }
	// return employees;
	// }
}
