package com.system;

public class Admin {
	
	private int id;
	private String name;
	private String email;
	private String username;
	private String password;
	
	public Admin(int id1, String name1, String email1, String username1, String password1) {
		
		this.id = id1;
		this.name = name1;
		this.email = email1;
		this.username = username1;
		this.password = password1;
		
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
