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
			
			String loginSql = "INSERT INTO login (username,pwd,usertype)"
					+ "VALUES ('"+p.getUserName()+"','"+p.getPassword()+"','"+p.getUserType()+"')";
			
			System.out.println(loginSql);
			
			
			PreparedStatement ps = con.prepareStatement(loginSql,
					Statement.RETURN_GENERATED_KEYS);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			int newPatientId = 0;
			if (rs.next()) {
				newPatientId = rs.getInt(1);
			} else {
				// do what you have to do
			}
			ps.close();
			
			String sql = "INSERT INTO patient (id,username, firstname, lastname, gender, email, mobilenumber, address, zipcode,age) "
					+ "VALUES ('"+newPatientId+"','"+p.getUserName()+"','"+p.getFirstName() + "', '" + p.getLastName()
					+ "','"+p.getGender()+"','"+p.getEmail()+"','"+p.getMobileNumber()+"','"+p.getAddress()+"','"+p.getZipCode()+"','"+p.getAge()+"')";
			
			System.out.println(sql);
			PreparedStatement ps1 = con.prepareStatement(sql);
            ps1.executeUpdate();
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
				e = new Patient(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10) );
			}
			con.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
		return e;
	}
	
	public void addESASRecord(EsasRecord esas)
	{
		
		try {
			Connection con = dataSource.getConnection();
			String sql ="Insert ?,?,";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,1);
			ps.setDate( 1, new java.sql.Date( esas.sysdate.getTime() ));
			ResultSet rs = ps.executeQuery();			
			if (rs.next()) {
				
			}
			con.close();
		} catch (SQLException exp) {
			exp.printStackTrace();
		}
	}
}
