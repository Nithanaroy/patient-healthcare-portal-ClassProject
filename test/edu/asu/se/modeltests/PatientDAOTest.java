package edu.asu.se.modeltests;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import edu.asu.se.model.*;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import edu.asu.se.model.Appointment;
import edu.asu.se.model.EsasRecord;
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
	public void testAddPatient() throws SQLException {
		PatientDAO dao = new PatientDAO(con);
		Patient p, p1;
		try {
			// Test 1: Should insert patient when all details are provided
			// correctly
			p = new Patient("testuser", "password", "Test", "User", "m",
					"testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			p1 = dao.findPatient("testuser");

			assertNotNull("Newly created patient shouldnt be null", p1);

		} finally {
			con.rollback();
		}

		try {
			// Test 2: Should not insert patient when not all details are
			// provided correctly
			p = new Patient(null, "password", "Test", "User", "m",
					"testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			p1 = dao.findPatient("testuser");
			assertNull("Newly created patient should be null", p1);
		} finally {
			con.rollback();
		}
	}

	@Test
	public void testFindPatientInt() throws SQLException {
		PatientDAO dao = new PatientDAO(con);
		Patient p;
		try {
			
			p = new Patient("testuser", "password", "Test", "User", "m",
					"testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			dao.findPatient("testuser");

			assertNotNull("Newly created patient shouldnt be null", p);

		} finally {
			con.rollback();
		}


	}

	@Test
	public void testFindPatientString() throws SQLException {
		PatientDAO dao = new PatientDAO(con);
		Patient p;
		try {
				p = new Patient("testuser", "password", "Test", "User", "m",
					"testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			p = dao.findPatient("testuser");

			assertNotNull("Newly created patient shouldnt be null", p);

		} finally {
			con.rollback();
		}

	}

	@Test
	public void testAddESASRecord() throws SQLException {
		
		PatientDAO dao = new PatientDAO(con);
		Patient p;
		try {
			p = new Patient("testuser", "password", "Test", "User", "m",
					"testuser@test.com", "999999999", "Address", "234234", "23");
			dao.addPatient(p);
			EsasRecord esas=new EsasRecord("testuser", "0", "0", "0", "0", "0","0", "0", "0", "0");
			int success=dao.addESASRecord(esas);

			assertSame(1, success);

		} finally {
			con.rollback();
		}
		
	}

	@Test
	public void testAddBodyPainInfo() {
	}

	@Test
	public void testGetMedicalHistory() {
	}

	@Test
	public void testAddAppointment() throws SQLException {
		
		Patient p = new Patient("testuser", "password", "Test", "User", "m",
				"testuser@test.com", "999999999", "Address", "234234", "23");
		PatientDAO pdao =new PatientDAO(con);
		pdao.addPatient(p);
       Doctor d=new Doctor("doctor2", "doctor2", "doctor2","surgon", "94%"); 	
		Appointment a=new Appointment("2015-25-04","testuser",d);
		int success=pdao.addAppointment(a);
		assertSame(1, success);
		con.rollback();
	}

	@Test
	public void testGetInpatientList() {
	}

	@Test
	public void testEditPatientSuccess() throws SQLException {
		PatientDAO dao = new PatientDAO(con);
		Patient p, p1;

		// Test 1: Patient details updated successfully
		p = new Patient("testuser", "password", "Test", "User", "m",
				"testuser@test.com", "999999999", "Address", "234234", "23");
		dao.addPatient(p);

		p1 = new Patient("testuser", "Testupdated", "User", "male",
				"testuser@test.com", "999999999", "Address", "234234", "23");

		int status = dao.editPatient(p1);

		assertSame(1, status);

		con.rollback();

	}

	@Test()
	public void testEditPatientFailure() throws SQLException {
		Patient p, p1;
		PatientDAO dao = new PatientDAO(con);

		// Test: Patient Details not updated because of one empty field
		p = new Patient("testuser", "password", "Test", "User", "m",
				"testuser@test.com", "999999999", "Address", "234234", "23");
		dao.addPatient(p);
		p1 = new Patient("testuser", "Testupdated", "User", "male",
				"testuser@test.com", null, "Address", "234234", "23");

		int status = dao.editPatient(p1);
		assertSame(0, status);

		con.rollback();
	}

}
