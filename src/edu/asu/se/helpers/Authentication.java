package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.LoginDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.UserType;

public class Authentication implements ICommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LoginDAO ldao = new LoginDAO();
		String userName = request.getParameter("uname");
		String password = request.getParameter("pwd");

		UserType userType = ldao.authenticateAndGetType(userName, password);

		HttpSession session = request.getSession();
		session.setAttribute("userType", userType.toString());

		switch (userType) {
		case patient:
			request.getRequestDispatcher("/views/patient.jsp").forward(request,
					response);
			break;

		case staff:
			request.getRequestDispatcher("/views/doctor.jsp").forward(request,
					response);
			break;

		default:
			session.setAttribute("flag", 1);
			request.getRequestDispatcher("/views/login.jsp").forward(request,
					response);
			System.err.println("Wrong credentials");
			break;
		}
	}
}
