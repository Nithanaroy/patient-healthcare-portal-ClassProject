package edu.asu.se.helpers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.asu.se.model.MedicalRecord;
import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;

public class MedicalHistory implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PatientDAO e = new PatientDAO();

		String username = "nitin"; /*
									 * TODO: Should be pulled from Session
									 * String
									 */

		MedicalRecord history = e.getMedicalHistory(username);

		request.setAttribute("history", history);

		request.getRequestDispatcher("/views/medicalHistory.jsp").forward(request,
				response);
	}

}
