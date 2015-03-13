package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class FindByDesignation implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PatientDAO e = new PatientDAO();
		String designation = request.getParameter("designation");
//		request.setAttribute("employees", e.findByDesignation(designation));
		request.getRequestDispatcher("/views/_findByDesignationJSON.jsp")
				.forward(request, response);
	}

}
