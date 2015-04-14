package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.asu.se.model.BodyPart;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.MessageType;
import edu.asu.se.utils.StatusMessage;

public class SaveBodyPart implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PatientDAO e = new PatientDAO();

		// String username = "nitin";
		/*
		 * TODO: Should be pulled from Session String
		 */
		HttpSession session = request.getSession();
		String username=(String)session.getAttribute("userName");
		String bodyPainInfo = request.getParameter("body-part-info");

		boolean result = e
				.addBodyPainInfo(new BodyPart(username, bodyPainInfo));

		StatusMessage g = null;
		if (result)
			g = StatusMessage.createInstance("Successfully submitted",
					MessageType.success);
		else
			g = StatusMessage.createInstance("Something went wrong",
					MessageType.error);

		request.setAttribute("status", g);

		request.getRequestDispatcher("/views/patientHome.jsp").forward(request,
				response);
	}

}
