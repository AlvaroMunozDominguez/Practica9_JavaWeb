<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="org.example.practica9.Persona" %>
<%@ page import="fecha.JspCalendar" %>
<%@ page import="org.example.practica9.Zodiaco" %>

<jsp:useBean id="calendar" class="fecha.JspCalendar" />

<%
    // Obtener la lista de personas desde la sesión
    List<Persona> personas = (List<Persona>) session.getAttribute("personas");

    // Evitar error si no hay personas en sesión
    if (personas == null) {
        personas = new ArrayList<>();
    }

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