package edu.asu.se.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AppointmentDAO {
	
	

		private DataSource dataSource;

		/**
		 * Fetch the connection string
		 */
		public AppointmentDAO() {
			try {
				Context ctx = new InitialContext();
				dataSource = (DataSource) ctx
						.lookup("java:comp/env/jdbc/HospitalDB");
			} catch (NamingException e) {
				e.printStackTrace();
			}
		}
		
		

		public int addAppointment(String username, String date, String doctor) {
			int success=0;
			try {
				Connection con = dataSource.getConnection();
				String sql ="INSERT INTO `se_project`.`appointment`"
						+ "(`username`,`appointment_time`,`doctor_name`)"
						+ "VALUES(?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, date);
				ps.setString(3, doctor);
				
				 success= ps.executeUpdate();		
				con.close();
			} catch (SQLException exp) {
				exp.printStackTrace();
			}
			return success;
		}

}
