package com.ltts.demoweb2.model;

import java.sql.Date;

public class Player {
    private int id;
	private String name;
	private String country;
	private Date dateOfBirth;

	private String email;
	private int age;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public Player(int id, String name, String country, Date dateOfBirth, String email, int age) {
		super();
		this.id = id;
		this.name = name;
		this.country = country;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.age = age;
	}
	public Player() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Player [id=" + id + ", name=" + name + ", dateOfBirth=" + dateOfBirth + ", age=" + age + ", email="
				+ email + ", country=" + country + "]";
	}
	
	
	
	
	
	
	
	
}
