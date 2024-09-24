<%@page import="java.util.List"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.time.ZoneId"%>
<%@page import="java.time.ZonedDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!/* Programação dos membros da classe Servlet */
	String lastZoneId = "America/Sao_Paulo";

	List<String> getZoneIds() {
		return ZoneId.getAvailableZoneIds().stream().sorted().collect(Collectors.toList());
	}

	ZonedDateTime getZoneDateTime(String zoneId) {
		if (zoneId != null) {
			lastZoneId = zoneId;
		}
		return ZonedDateTime.now(ZoneId.of(lastZoneId));
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Mundial</title>
</head>
<body>
	<form action="index.jsp">
		<select name="select_locale">
			<option selected="selected" value="">Selecione um fuso
				horário</option>
			<%-- Esse bloco de código, assim como os abaixos, são parte do código do método jspService(), inclusive este comentários --%>
			<%
			for (var zone : getZoneIds()) {
			%>
			<option value="<%=zone%>"><%=zone%></option>
			<%
			}
			%>
		</select> <input type="submit" value="Ver Hora">
	</form>

	<%
	var zone = request.getParameter("select_locale");
	if (zone.isEmpty()) {
	%>
	<p>
		Horário sp:
		<%=getZoneDateTime(null).toString()%></p>
	<%
	} else {
	%>
	<p>
		Horário:
		<%=getZoneDateTime(zone).toString()%></p>
	<%
	}
	%>
</body>
</html>