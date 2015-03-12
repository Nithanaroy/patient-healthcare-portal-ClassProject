package com.intuit.training.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intuit.training.model.EmployeeDAO;
import com.intuit.trianing.utils.ICommand;

public class FindById implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeDAO e = new EmployeeDAO();
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (Exception exp) {
		}
		request.setAttribute("employee", e.findEmployee(id));
		request.getRequestDispatcher("/views/_findByIdJSON.jsp").forward(
				request, response);
	}

}
