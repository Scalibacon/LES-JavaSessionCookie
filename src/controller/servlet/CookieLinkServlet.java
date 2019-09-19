package controller.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookieLinkServlet")

public class CookieLinkServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		doGet(request, response);
	}		
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{		
		response.sendRedirect("http://www." + request.getParameter("link") + ".com");
	}

}
