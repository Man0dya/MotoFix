package com.system;

public class Checkout {
	 private int id;
	 private String firstName;
	 private String lastName;
	 private String username;
	 private String email;
	 private String address;
	 private String country;
	 private String paymentMethod ;
	 private String cardName;
	 private String cardNumber;
	 private String expiration;
	 private String cvv ;
	
	public Checkout(int id, String firstName, String lastName, String username, String email, String address,
			String country, String paymentMethod, String cardname, String cardNumber, String expiration, String cvv) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.address = address;
		this.country = country;
		this.paymentMethod = paymentMethod;
		this.cardName = cardname;
		this.cardNumber = cardNumber;
		this.expiration = expiration;
		this.cvv = cvv;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getCardname() {
		return cardName;
	}

	public void setCardname(String cardname) {
		this.cardName = cardname;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	public String getExpiration() {
		return expiration;
	}

	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	 
	 
	
}
