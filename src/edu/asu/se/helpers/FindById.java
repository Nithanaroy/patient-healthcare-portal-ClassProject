package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class FindById implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PatientDAO e = new PatientDAO();
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (Exception exp) {
		}
//		request.setAttribute("employee", e.findEmployee(id));
		request.getRequestDispatcher("/views/_findByIdJSON.jsp").forward(
				request, response);
	}

}
