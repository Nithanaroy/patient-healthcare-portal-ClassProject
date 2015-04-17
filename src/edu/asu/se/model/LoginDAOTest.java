package edu.asu.se.model;

import java.sql.Connection;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSourceFactory;
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
	public void testLoginPatient() {
	}

	//@Test
	/*public void testAuthenticateAndGetType() {
		PatientDAO dao = new PatientDAO(con);
		DoctorDAO dao1 = new DoctorDAO(con);
		LoginDAO dao2 = new LoginDAO(con);
		Patient p;
		Doctor d;
		String user, pass;
		Usertype type = null;
		try
		{
			p = new Patient("testuser", "password", "Test", "User", "m", "testuser@test.com", "999999999", "Address", "234234","23");
			dao.addPatient(p);
			
			user = p.getUserName();
			pass = p.getPassword();
			dao2.loginPatient(p);
			
			type = dao2.authenticateAndGetType(user, pass);		
			
			
		}
	}*/

}
