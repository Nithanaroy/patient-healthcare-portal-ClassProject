package edu.asu.se.model;

import java.util.ArrayList;

public class Patient {

	public Patient(String userName, String firstName, String lastName,
			String gender, String email, String mobileNumber, String address,
			String zipCode, String age) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.zipCode = zipCode;
		this.age = age;
	}

	private String userName, password, firstName, lastName, gender, email,
			mobileNumber, address, zipCode, age, userType;
	ArrayList<EsasRecord> esasList;
	private int id;

	public Patient(int id, String userName, String firstName, String lastName,
			String gender, String age, String email, String mobileNumber,
			String address, String zipCode) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.zipCode = zipCode;
		this.age = age;
		this.id = id;
	}

	public Patient(String userName, String password, String firstName,
			String lastName, String gender, String email, String mobileNumber,
			String address, String zipCode, String age) {
		super();

		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.zipCode = zipCode;
		this.age = age;
		this.userType = "patient";
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

	public String getName() {
		return this.getFirstName() + " " + this.getLastName();
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getFullName() {
		return this.firstName + " " + this.lastName;
	}

}
