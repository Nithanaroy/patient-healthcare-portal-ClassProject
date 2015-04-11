package edu.asu.se.model;

public class Appointment {
	private String date, username;
	private Doctor doc;

	public Appointment(String date, String username, Doctor doc) {
		super();
		this.date = date;
		this.username = username;
		this.doc = doc;
	}

	public String getDate() {
		return date;
	}

	public String getUsername() {
		return username;
	}

	public Doctor getDoctor() {
		return doc;
	}
}
