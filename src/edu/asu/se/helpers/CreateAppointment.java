package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.Appointment;
import edu.asu.se.model.Doctor;
import edu.asu.se.model.DoctorDAO;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.MessageType;
import edu.asu.se.utils.StatusMessage;

public class CreateAppointment implements ICommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		PatientDAO adao = new PatientDAO();
		Doctor doctor = new DoctorDAO().findDoctorByUsername(request
				.getParameter("dname"));
		String date = request.getParameter("time");
		
		//String username = "nitin";
		String username = (String) session.getAttribute("userName");
		// // TODO: Replace when sessions are in
		// places
		System.out.println(date);	
		System.out.println(username);
		
		Appointment a = new Appointment(date, username, doctor);

		int success = adao.addAppointment(a);
		StatusMessage g = null;
		if (success == 1)
			g = StatusMessage.createInstance(
					"Successfully created an appointment", MessageType.success);
		else if(success==0)
			g = StatusMessage
					.createInstance(
							"Sorry!\nYou cannot create more than one appointment with same doctor",
							MessageType.error);

		else if(success==2)
		g = StatusMessage
				.createInstance(
						"Sorry!\n Doctor name you mentioned does not exits .. please try again",
						MessageType.error);
		request.setAttribute("status", g);

		request.getRequestDispatcher("/views/patientHome.jsp").forward(request,
				response);

	}
}
