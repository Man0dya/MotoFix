package com.system;

public class Requestp {
	private int id;
	private String email;
	private String product;
	private int quantity;
	
	public Requestp (int id, String email, String product,int quantity) {
		this.id = id;
		this.email = email;
		this.product = product;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public String getProduct() {
		return product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setId(String string, int id) {
		this.id = id;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public void setQunatity(int quantity) {
		this.quantity = quantity;
	}




}
