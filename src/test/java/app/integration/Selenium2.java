package app.integration;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

public class Selenium2 {
	
	protected WebDriver driver;
	protected final String host = "http://localhost:8080";
	
	@Before
	public void setup() throws Exception {
		driver = new FirefoxDriver();
//		driver = new HtmlUnitDriver();
	}
	
	@After
	public void tearDown() throws Exception {
		driver.quit();
	}
	
	protected void open(String url) {
		driver.get(host + url);
	}
}