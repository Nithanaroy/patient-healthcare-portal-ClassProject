package edu.asu.se.model;

import java.util.Date;

import edu.asu.se.utils.DateFormat;

public class Appointment {
	private Date date;
	private String username;
	private Doctor doc;

	public Appointment(String date, String username, Doctor doc) {
		super();
		this.date = DateFormat.format(date);
		this.username = username;
		this.doc = doc;
	}

	public String getFormattedDate() {
		return DateFormat.toString(date);
	}
	
	public String getDate() {
		return DateFormat.getDBDate(date);
	}

	public String getUsername() {
		return username;
	}

	public Doctor getDoctor() {
		return doc;
	}
	
	public String getDoctorName() {
		return this.doc.getFullName();
	}
	
	public String getPatientName() {
		// TODO: A bad way of doing things
		PatientDAO d = new PatientDAO();
		Patient p = d.findPatient(username);
		return p.getFullName();
	}
}
