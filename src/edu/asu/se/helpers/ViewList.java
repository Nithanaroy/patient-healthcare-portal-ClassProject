
package edu.asu.se.helpers;

import java.io.IOEXCEPTION;

import javax.servlet.http.HttpServletRequest;

public class ViewList implements ICommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		PatientDAO hold = new PatientDAO();
		
		for(int i = 0; i < PatientList; i++)
		{
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");
			String mobileNumber = request.getParameter("mobilenumber");
			String address = request.getParameter("address");
			String zipCode = request.getParameter("zipcode");
			String age=request.getParameter("age");
			
			//print the names or give them to a front end service
		}
		//the above looks as though you're getting parameters from somewhere then I just want to output them and cycle to the next one in the list
		
		
	}
}