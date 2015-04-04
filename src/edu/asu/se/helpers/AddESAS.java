package edu.asu.se.helpers;

import java.io.IOException;

import edu.asu.se.model.EsasRecord;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class AddESAS implements ICommand{
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		PatientDAO e = new PatientDAO();
		String pain=request.getParameter("a");
		String tiredness=request.getParameter("a");
		String nausea=request.getParameter("a");
		String depression=request.getParameter("a");
		String anxiety=request.getParameter("a");
		String drowsiness=request.getParameter("a");
		String appetitite=request.getParameter("a");
		String wellbeing=request.getParameter("a");
		String shortnessOfBreath=request.getParameter("a");
		String userName;
		EsasRecord esasrecord=new EsasRecord(userName,pain,tiredness,nausea,depression,anxiety,drowsiness,appetitite,wellbeing,shortnessOfBreath);
		
	}

}
