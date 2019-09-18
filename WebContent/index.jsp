<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session e Cookies</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<div id="session_left">
		<%
			HttpSession sessao = request.getSession();
			if(sessao.getAttribute("nome") == null){
				out.print("Olá, Sr. Deslogado");
				out.print("<br>Não há ID para a sessão");
				out.print("<br>Sem tempo, irmão");
			}else{
				out.print("Olá, " + sessao.getAttribute("nome"));
				out.print("<br>ID: <div id='id_session'>" + session.getId() + "</div>");
				out.print("<br>Sua sessão expirará em " + sessao.getMaxInactiveInterval() + "s");
				out.print("<br><a href='sessionDestroyServlet'>Sair</a>");
			}
		%>
	</div>

	<div id="grandona">
		<div id="grandona-title">Session e Cookies</div>

		<form action="sessionCreationServlet" method="post">
			<div class="form_div">
				<input type="text" name="nome" class="input_text" placeholder="Nome...">
				<input type="number" name="tempo" class="input_text" placeholder="Tempo limite...">
				<input type="submit" class="btnSubmit" value="Enviar">				
			</div>
		</form>
	</div>
</body>

</html>