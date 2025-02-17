<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="org.example.practica9.Persona" %>
<%@ page import="fecha.JspCalendar" %>
<%@ page import="org.example.practica9.Zodiaco" %>

<jsp:useBean id="calendar" class="fecha.JspCalendar" />

<%
    // Lista de personas precargada
    List<Persona> personas = new ArrayList<>();
    personas.add(new Persona("Carlos", "Gómez", LocalDate.of(1990, 3, 15)));
    personas.add(new Persona("Ana", "López", LocalDate.of(1985, 7, 22)));
    personas.add(new Persona("Pedro", "Martínez", LocalDate.of(2000, 11, 5)));

    request.setAttribute("personas", personas);

%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ver Signo Zodiacal</title>
</head>
<body>
<h1>Signo Zodiacal de las Personas</h1>
<p>Fecha actual: <%= calendar.getDate() %></p>

<table border="1">
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Fecha de Nacimiento</th>
        <th>Edad</th>
        <th>Signo Zodiacal</th>
    </tr>
    <% for (Persona p : personas) { %>
    <tr>
        <td><%= p.getNombre() %></td>
        <td><%= p.getApellido() %></td>
        <td><%= p.getFechaNacimiento() %></td>
        <td><%= p.calcularEdad() %></td>
        <td><%= p.getSignoZodiaco() %></td>
    </tr>
    <% } %>
</table>

<br>
<a href="index.jsp">Volver</a>
</body>
</html>
