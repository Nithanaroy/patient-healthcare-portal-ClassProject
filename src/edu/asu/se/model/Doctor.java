package edu.asu.se.model;

public class Doctor {

	private String userName;
	private String password;
	private String firstName;
	private String lastName;
	private String speciality;
	private String successRate;

	public Doctor(String userName, String firstName, String lastName,
			String speciality, String successRate) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.speciality = speciality;
		this.successRate = successRate;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getSpeciality() {
		return speciality;
	}

	public String getSuccessRate() {
		return successRate;
	}

	public String getFullName() {
		return firstName + " " + lastName;
	}
}
