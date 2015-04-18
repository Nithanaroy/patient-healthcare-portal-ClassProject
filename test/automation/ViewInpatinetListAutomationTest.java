package automation;

import com.thoughtworks.selenium.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

import java.util.regex.Pattern;

public class ViewInpatinetListAutomationTest {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8090/");
		selenium.start();
	}

	@Test
	public void testInpatinetList() throws Exception {
		selenium.open("/PatientHealthCarePortal/views/login.jsp");
		Thread.sleep(2000);
		selenium.type("id=uname", "doctor1");
		
		selenium.type("id=pwd", "doctor1");
		Thread.sleep(2000);
		selenium.click("css=button.btn.btn-default");
		Thread.sleep(2000);
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Inpatient List (current)");
		Thread.sleep(2000);
		selenium.waitForPageToLoad("30000");
		selenium.click("link=Logout (current)");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}

