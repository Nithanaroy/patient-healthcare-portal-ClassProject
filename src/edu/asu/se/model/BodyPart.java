package edu.asu.se.model;

import java.util.Date;

import edu.asu.se.utils.DateFormat;

public class BodyPart {

	private String username, indices;
	private Date date;

	public BodyPart(String date, String username, String indices) {
		super();
		this.date = DateFormat.format(date);
		this.username = username;
		this.indices = indices;
	}

	public BodyPart(String username, String indices) {
		super();
		this.username = username;
		this.indices = indices;
	}

	public String getDate() {
		return DateFormat.toString(date);
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
		Patient p = d.findPatient(username);
		return p.getFullName();
	}
}
