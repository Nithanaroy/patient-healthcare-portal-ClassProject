package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.Patient;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class ViewPatient implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		PatientDAO pdao = new PatientDAO();

		String uname = (String) session.getAttribute("userName");
		//System.out.println(uname);
		Patient p = pdao.getPatient(uname);
		request.setAttribute("patient", p);
		request.setAttribute("uname", uname);
		System.out.println(p.getUserName());
		request.getRequestDispatcher("/views/EditProfile.jsp").forward(request,
				response);
	}
}
