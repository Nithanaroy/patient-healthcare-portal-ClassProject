package edu.asu.se.model;

public class BodyPart {

	private String date, username, indices;

	public BodyPart(String date, String username, String indices) {
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
		return date;
	}

	public String getUsername() {
		return username;
	}

	public String getIndices() {
		return indices;
	}
}
