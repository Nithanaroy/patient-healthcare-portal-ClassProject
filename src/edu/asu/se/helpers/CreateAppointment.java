package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.EsasRecord;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.MessageType;
import edu.asu.se.utils.StatusMessage;
import edu.asu.se.model.AppointmentDAO;
public class CreateAppointment implements ICommand{
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		AppointmentDAO adao = new AppointmentDAO();
		String doctor=request.getParameter("dname");
		String date=request.getParameter("time");
		String username = "pat";//(String)session.getAttribute("userName");
		// get the parameter from the html page
		
        int success=adao.addAppointment(username, date, doctor);
        StatusMessage g = null;
		if (success==1)
			g = StatusMessage.createInstance("Successfully submitted",
					MessageType.success);
		else
			g = StatusMessage.createInstance("Sorry!\nYou cannot create more than one appointment with same doctor",
					MessageType.error);

		request.setAttribute("status", g);

		request.getRequestDispatcher("/views/patientHome.jsp").forward(request,
				response);
        
	}

}

