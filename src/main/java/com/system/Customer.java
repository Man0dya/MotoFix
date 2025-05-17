package com.system;

public class Customer {
	
	private int id;
	private String name;
	private String email;
	private String username;
	private String password;
	
	public Customer(int id, String name, String email, String username, String password) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
}
