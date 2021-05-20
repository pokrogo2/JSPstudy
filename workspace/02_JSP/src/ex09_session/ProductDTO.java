package ex09_session;

public class ProductDTO {
	private String product;
	private String quantity;
	public ProductDTO(){};
	public ProductDTO(String product, String quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	

}
