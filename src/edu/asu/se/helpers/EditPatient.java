
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
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		PatientDAO e = new PatientDAO();
        String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobilenumber");
		String address = request.getParameter("address");
		String zipCode = request.getParameter("zipcode");
		String age = request.getParameter("age");

		Patient previousPatient = findPatientWithUser(uname);

        if (previousPatient != NULL)
        {
		    request.setAttribute("patient", previousPatient);

		    request.getRequestDispatcher("/views/viewPatient.jsp").forward(request,
				    response);
        }
	}

}
