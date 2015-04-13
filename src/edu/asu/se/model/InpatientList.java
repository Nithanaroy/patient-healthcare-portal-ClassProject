package edu.asu.se.model;

public class InpatientList {

	String username, appointmentTime, doctorName;

	
	
	
	public InpatientList(String username, String appointmentTime,
			String doctorName) {
		super();
		this.username = username;
		this.appointmentTime = appointmentTime;
		this.doctorName = doctorName;
	}
	public InpatientList(String username) {
		super();
		this.username = username;
	
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	
	
}
