
package edu.asu.se.helpers;

import java.io.IOEXCEPTION;

import javax.servlet.http.HttpServletRequest;

public class ViewList implements ICommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
	}
}