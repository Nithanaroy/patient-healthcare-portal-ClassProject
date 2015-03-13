package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.Patient;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class AddPatient implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PatientDAO e = new PatientDAO();
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		Patient p = new Patient(fname, lname);
		p = e.addPatient(p);
		request.setAttribute("patient", p);
		request.getRequestDispatcher("/views/viewPatient.jsp")
				.forward(request, response);
	}

}
