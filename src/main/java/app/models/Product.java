package app.models;

@javax.persistence.Entity
public class Product extends Entity {
	
	private Double price;
	private String name;
	
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public Double getPrice() {
		return price;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
}
