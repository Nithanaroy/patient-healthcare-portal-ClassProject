package automation;

import com.thoughtworks.selenium.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import java.util.regex.Pattern;

public class FillESASFormAndLogoutAutomationTest {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8090/");
		selenium.start();
	}

	@Test
	public void testFillESAS() throws Exception {
		selenium.open("/PatientHealthCarePortal/views/logout.req");
		selenium.type("id=pwd", "patient1");
		selenium.type("id=uname", "patient1");
		Thread.sleep(2000);
		selenium.click("css=button.btn.btn-default");
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=Treatment Request (current)");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=Fill ESAS Form (current)");
		Thread.sleep(2000);
		selenium.waitForPageToLoad("30000");
		selenium.select("name=tiredness", "label=3");
		Thread.sleep(2000);
		selenium.click("css=button.btn.btn-default");
		Thread.sleep(2000);
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=Logout (current)");
		Thread.sleep(2000);
		selenium.waitForPageToLoad("30000");
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}
