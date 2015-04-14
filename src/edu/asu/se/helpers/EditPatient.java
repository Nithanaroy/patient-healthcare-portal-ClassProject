package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.utils.ICommand;

public class EditPatient implements ICommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		String pwd = request.getParameter("pwd");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobilenumber");
		String address = request.getParameter("address");
		String zipCode = request.getParameter("zipcode");
		String age = request.getParameter("age");
    }
}
