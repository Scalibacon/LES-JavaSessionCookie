<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.servlet.CookieLinkServlet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session e Cookies</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<jsp:include page="session_info.jsp" />
	<div id="cookie_msg">
		<%
			Cookie cookieL = CookieLinkServlet.getCookie(request, "link");
			if (cookieL != null) {
				out.print("Último link acessado: " + cookieL.getValue());
			} else {
				out.print("Nenhum link acessado nas últimas 24h");
			}
		%>
		<br><a href="index.jsp">Voltar</a>
	</div>
</body>
</html>