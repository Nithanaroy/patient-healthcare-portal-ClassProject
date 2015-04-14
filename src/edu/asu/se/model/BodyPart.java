package edu.asu.se.model;

import java.util.Date;

import edu.asu.se.utils.DateFormat;

public class BodyPart {

	private String username, indices;
	private String date;

	public BodyPart( String username, String indices,String date) {
		super();
		this.date = date;
		this.username = username;
		this.indices = indices;
	}

	public BodyPart(String username, String indices) {
		super();
		this.username = username;
		this.indices = indices;
	}

	public String getDate() {
		return this.date;
		
	}

	public String getUsername() {
		return username;
	}

	public String getIndices() {
		return indices;
	}

	public String getPatientName() {
		// TODO: A bad way of doing things
		PatientDAO d = new PatientDAO();
		System.out.println(username);
		Patient p = d.findPatient(username);
		return p.getFullName();
	}
}
