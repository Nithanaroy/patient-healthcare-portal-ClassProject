package edu.asu.se.helpers;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import edu.asu.se.utils.ICommand;

public class Logout implements ICommand{

	

	public void execute (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	HttpSession session=request.getSession();
	session.invalidate();
	request.getRequestDispatcher("/views/login.jsp").forward(request,response);
			
	}

}
