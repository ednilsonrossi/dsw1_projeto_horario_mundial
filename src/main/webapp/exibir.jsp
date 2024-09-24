<%@page import="java.time.ZoneId"%>
<%@page import="java.time.ZonedDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- Cria ou busca uma instância do bean (Usuario). O atributo scope="request" 
	 define o escopo no qual o bean estará disponível (neste caso, apenas durante 
	 a requisição). --%>    
<jsp:useBean id="user" class="br.edu.ifsp.dsw1.Usuario" scope="request" />

<%-- Define os valores das propriedades do bean com base nos parâmetros recebidos pela 
	 requisição (parâmetros enviados pelo formulário).

     O property="*" indica que todas as propriedades do bean devem ser preenchidas com 
     os parâmetros da requisição que possuem o mesmo nome. --%>
<jsp:setProperty name="user" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Dados do usuário</h1>
	<%-- Exibe o valor de uma propriedade do bean. --%>
	<p>Nome: <jsp:getProperty name="user" property="nome" /></p>
	<p>Email: <jsp:getProperty name="user" property="email" /></p>
	<p>Horário: <%= ZonedDateTime.now(ZoneId.of(user.getTimezone())) %></p>
</body>
</html>