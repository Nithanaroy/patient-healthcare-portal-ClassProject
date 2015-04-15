package edu.asu.se.modeltests;


import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import edu.asu.se.model.Patient;
import edu.asu.se.model.PatientDAO;

public class PatientDAOTest {

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
			connectionProps.put("url", "jdbc:mysql://localhost:3306/SE_Project_Test?autoCommit=false");

			dataSource = BasicDataSourceFactory.createDataSource(connectionProps);

			con = dataSource.getConnection();
			con.setAutoCommit(false);
		} catch (NamingException e) {
			Logger.getLogger(PatientDAO.class.getName()).log(Level.SEVERE, null, e);
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
	public void testAddPatient() throws SQLException {
		try {
			PatientDAO dao = new PatientDAO(con);
			// Test 1: Should insert patient when all details are provided correctly
			Patient p = new Patient("testuser", "password", "Test", "User", "m", "testuser@test.com", "999999999", "Address", "234234",
					"23");
			dao.addPatient(p);
			Patient p1 = dao.findPatient("testuser");
			assertNotNull("Newly created patient shouldnt be null", p1);

			// Test 2: Should not insert patient when not all details are provided correctly
			p = new Patient(null, "password", "Test", "User", "m", "testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			p1 = dao.findPatient("testuser");
			assertNotNull("Newly created patient should be null", p1);

		} finally {
			con.rollback();
		}
	}

	@Test
	public void testFindPatientInt() {

	}

	@Test
	public void testFindPatientString() {
	}

	@Test
	public void testAddESASRecord() {
	}

	@Test
	public void testAddBodyPainInfo() {
	}

	@Test
	public void testGetMedicalHistory() {
	}

	@Test
	public void testAddAppointment() {
	}

	@Test
	public void testGetInpatientList() {
	}

	@Test
	public void testEditPatient() {
	}

	@Test
	public void testGetPatient() {
	}

}
