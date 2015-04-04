package edu.asu.se.model;
import java.text.DateFormat;
import java.util.Date;

public class EsasRecord {

	private String userName,pain, tiredness, nausea, depression, anxiety, drowsiness, appetitite, wellbeing, shortnessOfBreath;
	
	Date sysdate;

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

	
	
	//pstmt.setDate( 1, new java.sql.Date( d1.getTime() );
}
