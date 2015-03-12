package com.intuit.training.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intuit.training.model.Employee;
import com.intuit.training.model.EmployeeDAO;
import com.intuit.trianing.utils.ICommand;

public class AddEmployee implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeDAO e = new EmployeeDAO();
		String name = request.getParameter("name");
		String designation = request.getParameter("designation");
		float salary = Float.parseFloat(request.getParameter("salary"));
		Employee emp = new Employee(name, designation, salary);
		e.addEmployee(emp);
	}

}
