package com.intuit.training.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intuit.training.model.EmployeeDAO;
import com.intuit.trianing.utils.ICommand;

public class FindByDesignation implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeDAO e = new EmployeeDAO();
		String designation = request.getParameter("designation");
		request.setAttribute("employees", e.findByDesignation(designation));
		request.getRequestDispatcher("/views/_findByDesignationJSON.jsp")
				.forward(request, response);
	}

}
