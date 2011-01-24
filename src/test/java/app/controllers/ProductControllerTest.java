package app.controllers;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class ProductControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new ProductController(null, null, null));
 	}
}
