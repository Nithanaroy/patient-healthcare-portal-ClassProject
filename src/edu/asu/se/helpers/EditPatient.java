package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.Patient;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.MessageType;
import edu.asu.se.utils.StatusMessage;

public class EditPatient implements ICommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		HttpSession session=request.getSession();
		String uname=(String)session.getAttribute("userName");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobilenumber");
		String address = request.getParameter("address");
		String zipCode = request.getParameter("zipcode");
		String age = request.getParameter("age");
		
		Patient p = new Patient(uname, fname,lname,gender,email,mobileNumber,address,zipCode,age );
		PatientDAO pdao=new PatientDAO();
		int success=pdao.editPatient(p);
		StatusMessage g = null;
		if (success==1)
			g = StatusMessage.createInstance("Successfully submitted",
					MessageType.success);
		else
			g = StatusMessage.createInstance("Something went wrong",
					MessageType.error);

		request.setAttribute("status", g);

		request.getRequestDispatcher("/views/patientHome.jsp").forward(request,
				response);
    }
}
