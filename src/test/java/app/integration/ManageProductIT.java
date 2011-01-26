package app.integration;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import stryker.database.DBUnitHelper;

public class ManageProductIT extends Selenium2 {

	@Test
	public void cadastroProduto() throws Exception {
		open("/products/new");
		
		WebElement price = driver.findElement(By.name("product.price"));
		WebElement name = driver.findElement(By.name("product.name"));

		price.sendKeys("500");
		name.sendKeys("celular com android");
		price.submit();
	
		assertTrue(driver.getPageSource().contains("celular com android"));
	}

	@After @Override
	public void tearDown() throws Exception {
		super.tearDown();
		DBUnitHelper dbUnitHelper = new DBUnitHelper();
		dbUnitHelper.deleteAll("/dataset/product.xml");
	}
}