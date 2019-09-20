<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session e Cookies</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	
	<jsp:include page="session_info.jsp" /> 	

	<div id="grandona">
		<div id="grandona-title">Session e <a href="outra.jsp" >Cookies</a></div>

		<form action="sessionCreationServlet" method="post">
			<div class="form_div">
				<input type="text" name="nome" class="input_text" placeholder="Nome...">
				<input type="number" name="tempo" class="input_text" placeholder="Tempo limite...">
				<input type="submit" class="btnSubmit" value="Enviar">				
			</div>
			
			<div class="form_div">
				<p class="cookie_link"><a href="cookieLinkServlet?link=google" target="_blank">Google</a></p>
				<p class="cookie_link"><a href="cookieLinkServlet?link=youtube" target="_blank">YouTube</a></p>
				<p class="cookie_link"><a href="cookieLinkServlet?link=stackoverflow" target="_blank">StackOverflow</a></p>
			</div>
		</form>
	</div>
	
</body>

</html>