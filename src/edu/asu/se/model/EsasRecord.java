package edu.asu.se.model;
//import java.text.DateFormat;
import java.util.Date;

public class EsasRecord {

	private String userName,pain, tiredness, nausea, depression, anxiety, drowsiness, appetitite, wellbeing, shortnessOfBreath;
	
  	private Date sysdate;



	public EsasRecord(String userName, String pain, String tiredness,
			String nausea, String depression, String anxiety,
			String drowsiness, String appetitite, String wellbeing,
			String shortnessOfBreath) {
		super();
		this.userName = userName;
		this.pain = pain;
		this.tiredness = tiredness;
		this.nausea = nausea;
		this.depression = depression;
		this.anxiety = anxiety;
		this.drowsiness = drowsiness;
		this.appetitite = appetitite;
		this.wellbeing = wellbeing;
		this.shortnessOfBreath = shortnessOfBreath;
	    sysdate=new Date();
	}
	

	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPain() {
		return pain;
	}

	public void setPain(String pain) {
		this.pain = pain;
	}

	public String getTiredness() {
		return tiredness;
	}

	public void setTiredness(String tiredness) {
		this.tiredness = tiredness;
	}

	public String getNausea() {
		return nausea;
	}

	public void setNausea(String nausea) {
		this.nausea = nausea;
	}

	public String getDepression() {
		return depression;
	}

	public void setDepression(String depression) {
		this.depression = depression;
	}

	public String getAnxiety() {
		return anxiety;
	}

	public void setAnxiety(String anxiety) {
		this.anxiety = anxiety;
	}

	public String getDrowsiness() {
		return drowsiness;
	}

	public void setDrowsiness(String drowsiness) {
		this.drowsiness = drowsiness;
	}

	public String getAppetitite() {
		return appetitite;
	}

	public void setAppetitite(String appetitite) {
		this.appetitite = appetitite;
	}

	public String getWellbeing() {
		return wellbeing;
	}

	public void setWellbeing(String wellbeing) {
		this.wellbeing = wellbeing;
	}

	public String getShortnessOfBreath() {
		return shortnessOfBreath;
	}

	public void setShortnessOfBreath(String shortnessOfBreath) {
		this.shortnessOfBreath = shortnessOfBreath;
	}

	public Date getSysdate() {
		return sysdate;
	}

	public void setSysdate(Date sysdate) {
		this.sysdate = sysdate;
	}
}
