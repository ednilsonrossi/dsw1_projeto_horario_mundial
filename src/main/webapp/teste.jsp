<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
int contadorAcessos = 0;
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
%>

<%
LocalDate dataAtual = LocalDate.now();
String strDataAtual = dataAtual.format(formatter);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Data atual: <%= strDataAtual %></h1>
	<% contadorAcessos += 1; %>
	<h2>Número de acessos: <%= contadorAcessos %></h2>
</body>
</html>