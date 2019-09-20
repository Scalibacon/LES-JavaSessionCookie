package controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/sessionCreationServlet")

public class SessionCreationServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		HttpSession sessao = request.getSession(true);
		String nome = request.getParameter("nome");
		
		sessao.setAttribute("nome", nome);
		
		if(request.getParameter("tempo") != null && request.getParameter("tempo") != "") {
			int tempo = Integer.parseInt(request.getParameter("tempo"));
			sessao.setMaxInactiveInterval(tempo);
		}
		
		response.sendRedirect("./index.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		doPost(request, response);
	}
	

}
