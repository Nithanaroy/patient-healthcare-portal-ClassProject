package automation;

import com.thoughtworks.selenium.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

import java.util.regex.Pattern;

public class ViewPatientHelpAutomationTest {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8090/");
		selenium.start();
	}

	@Test
	public void testViewPatientHelp() throws Exception {
		selenium.open("/PatientHealthCarePortal/views/login.req");
		selenium.type("id=uname", "patient1");

		selenium.type("id=pwd", "patient1");
		Thread.sleep(2000);
		selenium.click("css=button.btn.btn-default");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
		selenium.click("link=Help (current)");
		
		selenium.waitForPageToLoad("30000");
		selenium.click("//div[@id='accordion1_1']/div[4]/div/h4/a/span");
		Thread.sleep(2000);
		selenium.click("//div[@id='accordion1_1']/div[4]/div/h4/a/span");
		Thread.sleep(2000);
		selenium.click("//div[@id='accordion1']/div[2]/div/h4/a/span");
		Thread.sleep(2000);
		selenium.click("css=#accordion1_3 > div.panel.panel-default > div.panel-heading > h4.panel-title > a > span.glyphicon.glyphicon-plus");
		Thread.sleep(2000);
		selenium.click("link=Navigation");
		Thread.sleep(2000);
		selenium.click("link=Logout (current)");
		
		selenium.waitForPageToLoad("30000");
		Thread.sleep(2000);
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}