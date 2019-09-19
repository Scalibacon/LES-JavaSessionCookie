<div id="session_left">
	<%
		HttpSession sessao = request.getSession();
		if (sessao.getAttribute("nome") == null) {
			out.print("Olá, Sr. Deslogado");
			out.print("<br>Não há ID para a sessão");
			out.print("<br>Sem tempo, irmão");
		} else {
			out.print("Olá, " + sessao.getAttribute("nome"));
			out.print("<br>ID: <div id='id_session'>" + session.getId() + "</div>");
			out.print("<br>Sua sessão expirará em " + sessao.getMaxInactiveInterval() + "s");
			out.print("<br>Criado em " + sessao.getCreationTime() + "ms");
			out.print("<br>Acesso em " + sessao.getLastAccessedTime() + "ms");
			out.print("<br><a href='sessionDestroyServlet'>Sair</a>");
		}
	%>
</div>
