package edu.asu.se.model;

import java.util.List;

public class MedicalRecord {

	private String username;
	private List<EsasRecord> esas;
	private List<BodyPart> bodypart;
	private List<Appointment> appointment;

	public MedicalRecord(String username, List<EsasRecord> esas,
			List<BodyPart> bodypart, List<Appointment> appointment) {
		super();
		this.username = username;
		this.esas = esas;
		this.bodypart = bodypart;
		this.appointment = appointment;
	}

	public String getUsername() {
		return username;
	}

	public List<EsasRecord> getEsas() {
		return esas;
	}

	public List<BodyPart> getBodypart() {
		return bodypart;
	}

	public List<Appointment> getAppointment() {
		return appointment;
	}

}
