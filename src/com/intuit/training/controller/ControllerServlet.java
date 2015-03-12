package com.intuit.training.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.intuit.trianing.utils.ICommand;

public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControllerServlet() {
		super();
	}

	Properties props = new Properties();

	@Override
	public void init() throws ServletException {
		super.init();
		InputStream in = getServletContext().getResourceAsStream(
				"actions.properties");
		try {
			props.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// Handles findEmployee and findEmployeeByDesignation methods
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		executeCommand(request, response);
	}

	// Handles addEmployee method
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		executeCommand(request, response);
	}

	private void executeCommand(HttpServletRequest request,
			HttpServletResponse response) {
		String uri = request.getRequestURI();
		String subUri = uri.substring(uri.lastIndexOf("/"));
		String commandClass = props.getProperty(subUri);
		try {
			ICommand cmd = (ICommand) Class.forName(commandClass).newInstance();
			cmd.execute(request, response);
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
