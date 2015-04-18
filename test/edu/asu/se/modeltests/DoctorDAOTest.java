package edu.asu.se.modeltests;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.NamingException;
import javax.sql.DataSource;
import edu.asu.se.model.*;
import java.util.ArrayList;

import org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class DoctorDAOTest {

	private static DataSource dataSource;
	private static Connection con = null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		try {
			Properties connectionProps = new Properties();
			// TODO: Use context variables
			connectionProps.put("username", "root");
			connectionProps.put("password", "");
			connectionProps.put("driverClassName", "com.mysql.jdbc.Driver");
			connectionProps
					.put("url",
							"jdbc:mysql://localhost:3306/SE_Project_Test?autoCommit=false");

			dataSource = BasicDataSourceFactory
					.createDataSource(connectionProps);

			con = dataSource.getConnection();
			con.setAutoCommit(false);
		} catch (NamingException e) {
			Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE,
					null, e);
		}
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		con.close();
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testGetAllDoctors() {

		DoctorDAO dao = new DoctorDAO(con);
		ArrayList<Doctor> doctorList = new ArrayList<Doctor>();
		doctorList = dao.getAllDoctors();
		assertNotEquals(0, doctorList.size());
	}

	@Test
	public void findDoctorbyUsername() {

		DoctorDAO dao = new DoctorDAO(con);
		Doctor doctor = dao.findDoctorByUsername("doctor1");

		assertNotNull("Doctor got from data base should not be null", doctor);

	}
}
