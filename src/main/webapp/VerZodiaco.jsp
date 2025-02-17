<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="org.example.practica9.Persona" %>
<%@ page import="fecha.JspCalendar" %>

<jsp:useBean id="calendar" class="fecha.JspCalendar" />

<%
    // Lista de personas con imagen de perfil
    List<Persona> personas = new ArrayList<>();
    personas.add(new Persona("Carlos", "Gómez", LocalDate.of(1990, 3, 15), "Images/101.jpg"));
    personas.add(new Persona("Ana", "López", LocalDate.of(1985, 7, 22), "Images/102.jpg"));
    personas.add(new Persona("Pedro", "Martínez", LocalDate.of(2000, 11, 5), "Images/103.jpg"));

    request.setAttribute("personas", personas);
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ver Signo Zodiacal</title>
    <link rel="stylesheet" href="CSS/styleIndex.css"> <!-- Vinculación al CSS -->
</head>
<body>

<header>
    <h1>Signo Zodiacal de las Personas</h1>
    <p>Fecha actual: <%= calendar.getDate() %></p>
</header>

<section>
    <ul>
        <% for (Persona p : personas) { %>
        <li>
            <!-- Imagen de perfil -->
            <div class="perfil">
                <img src="<%= p.getImagenPerfil() %>" alt="Foto de <%= p.getNombre() %>">
            </div>

            <div class="info">
                <p><strong>Nombre:</strong> <%= p.getNombre() %> <%= p.getApellido() %></p>
                <p><strong>Fecha de Nacimiento:</strong> <%= p.getFechaNacimiento() %></p>
                <p><strong>Edad:</strong> <%= p.calcularEdad() %></p>

                <!-- Signo zodiacal con icono -->
                <div class="zodiaco">
                    <p><strong>Signo:</strong> <%= p.getSignoZodiaco() %></p>
                    <img src="Images/<%= p.getSignoZodiaco().toLowerCase() %>.png"
                         alt="Signo <%= p.getSignoZodiaco() %>">
                </div>
            </div>
        </li>
        <% } %>
    </ul>
</section>

<footer>
    <a href="index.jsp">Volver</a>
</footer>

</body>
</html>
