package automation;

import com.thoughtworks.selenium.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.regex.Pattern;

public class ViewDoctorsAndLogoutAutomationTest {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8090/");
		selenium.start();
	}

	@Test
	public void testViewdoctorsAndLogout() throws Exception {
		selenium.open("/PatientHealthCarePortal/views/login.jsp");
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.type("id=uname", "patient1");		
		
		selenium.type("id=pwd", "patient1");
		
		Thread.sleep(2000);
		selenium.click("css=button.btn.btn-default");
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=View Doctors");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=Logout (current)");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(3000);
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}
