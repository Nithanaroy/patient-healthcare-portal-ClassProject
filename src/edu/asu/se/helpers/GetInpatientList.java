package edu.asu.se.helpers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.InpatientList;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class GetInpatientList implements ICommand  {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		PatientDAO pdao=new PatientDAO();
		ArrayList<InpatientList> patientList = pdao.getInpatientList();
		
		request.setAttribute("patientList", patientList);
		
		request.getRequestDispatcher("/views/InpatientList.jsp").forward(request,
				response);		
	}
	
	
}
