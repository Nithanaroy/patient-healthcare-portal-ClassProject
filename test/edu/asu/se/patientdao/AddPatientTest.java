package edu.asu.se.patientdao;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import edu.asu.se.model.Patient;
import edu.asu.se.model.PatientDAO;

public class AddPatientTest {

	
	PatientDAO pdao;  
	Patient input;
	Patient output;
	
	
	@Test
	public void testAddPatient() {
		pdao=new PatientDAO();
		//input=new Patient(userName, firstName, lastName, gender, age, email, mobileNumber, address, zipCode);
		input=new Patient("test", "testing", "testing","last","Male","25","abc@gmail.com","456","abc","852");
		output=pdao.addPatient(input);
		assertEquals(input.getUserName(),output.getUserName());
	}

	
		
	}


