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

import edu.asu.se.utils.UserType;

public class LoginDAOTest {

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
	public void testLoginPatient() throws SQLException {
		LoginDAO ldao = new LoginDAO(con);
		PatientDAO pdao = new PatientDAO(con);
		Patient p = new Patient("testuser", "password", "Test", "User", "m",
				"testuser@test.com", "999999999", "Address", "234234", "23");
		pdao.addPatient(p);
		int patientid = ldao.loginPatient(p);
		assertNotEquals(null, patientid);
		con.rollback();

	}

	@Test
	public void testAuthenticateAndGetTypeDoctor() throws SQLException {

		LoginDAO dao = new LoginDAO(con);
		UserType userType = null;

		String username = "doctor1", password = "doctor1";

		userType = dao.authenticateAndGetType(username, password);

		assertEquals(userType.toString(), "staff");
		con.rollback();
	}

	@Test
	public void testAuthenticateAndGetTypePatient() throws SQLException {

		Patient p = new Patient("patient1", "patient1", "Test", "User", "m",
				"testuser@test.com", "999999999", "Address", "234234", "23");
		PatientDAO pdao = new PatientDAO(con);
		pdao.addPatient(p);
		
		LoginDAO ldao = new LoginDAO(con);
		UserType userType = null;

		String username = "patient1", password = "patient1";

		userType = ldao.authenticateAndGetType(username, password);

		assertEquals(userType.toString(), "patient");

		con.rollback();
	}

}
