package edu.asu.se.helpers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.LoginDAO;
import edu.asu.se.utils.ICommand;

public class Authentication implements ICommand{

	

	public void execute (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		LoginDAO ldao = new LoginDAO();
	String userName=request.getParameter("uname");
	String password = request.getParameter("pwd");
	
	String userType=ldao.valdateUser(userName,password);
	//System.out.println(userType);
	if(userType==null)
	{
	request.setAttribute("flag", 1);
	request.getRequestDispatcher("/views/login.jsp").forward(request,response);
	}
	if(userType.equals("staff"))
	{
		//System.out.println("instaff");
		request.getRequestDispatcher("/views/doctor.jsp").forward(request,response);
	}
	
	if(userType.equals("patient"))
	{	
		request.getRequestDispatcher("/views/patient.jsp").forward(request,response);
		
	}
}
}
