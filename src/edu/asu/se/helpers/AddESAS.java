package edu.asu.se.helpers;

import java.io.IOException;

import edu.asu.se.model.EsasRecord;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





import edu.asu.se.model.PatientDAO;
import edu.asu.se.utils.ICommand;
import edu.asu.se.utils.MessageType;
import edu.asu.se.utils.StatusMessage;

public class AddESAS implements ICommand{
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		PatientDAO pdao = new PatientDAO();
		String pain=request.getParameter("pain");
		String tiredness=request.getParameter("tiredness");
		String nausea=request.getParameter("nausea");
		String depression=request.getParameter("depression");
		String anxiety=request.getParameter("anxiety");
		String drowsiness=request.getParameter("drowsiness");
		String appetitite=request.getParameter("appetite");
		String wellbeing=request.getParameter("wellbeing");
		String shortnessOfBreath=request.getParameter("breath");
        String userName= "nitin"; //TODO: (String) session.getAttribute("userName");
        
        
        EsasRecord esasrecord=new EsasRecord(userName,pain,tiredness,nausea,depression,anxiety,drowsiness,appetitite,wellbeing,shortnessOfBreath);
		
        int success=pdao.addESASRecord(esasrecord);
        StatusMessage g = null;
		if (success==1)
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
