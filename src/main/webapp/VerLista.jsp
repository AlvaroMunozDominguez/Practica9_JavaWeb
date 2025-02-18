
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<html>
<head>
    <title>Ver Lista</title>
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>

<%
    // Lista de países [Ciudad, País, Tasa PIB, Imagen]
    List<String[]> paises = new ArrayList<>();
    paises.add(new String[]{"Sevilla", "España", "2,5%", "Images/spain.jpg"});
    paises.add(new String[]{"París", "Francia", "0,7%", "Images/paris.jpg"});
    paises.add(new String[]{"Ámsterdam", "Alemania", "-0,3%", "Images/germany.jpg"});
    paises.add(new String[]{"Milán", "Italia", "0,9%", "Images/Italy.jpg"});
    paises.add(new String[]{"Londres", "Inglaterra", "0,9%", "Images/england.jpg"});

    // Lista de deportes [Nombre, Jugadores, Duración, Imagen]
    List<String[]> deportes = new ArrayList<>();
    deportes.add(new String[]{"Baloncesto", "5 jugadores", "40 minutos", "Images/basket.jpg"});
    deportes.add(new String[]{"Fútbol", "11 jugadores", "90 minutos", "Images/football.jpg"});
    deportes.add(new String[]{"Balonmano", "7 jugadores", "60 minutos", "Images/balonmano.jpg"});
%>

<!-- Sección de países -->
<section>
    <h2>Listado de Países</h2>
    <ul>
        <% for (String[] pais : paises) { %>
        <li>
            <img src="<%= pais[3] %>" alt="<%= pais[1] %>">
            <div class="info">
                <div><strong>Ciudad:</strong> <%= pais[0] %></div>
                <div><strong>País:</strong> <%= pais[1] %></div>
                <div><strong>Tasa PIB:</strong> <%= pais[2] %></div>
            </div>
        </li>
        <% } %>
    </ul>
</section>

<!-- Sección de deportes -->
<section>
    <h2>Listado de Deportes</h2>
    <ul>
        <% for (String[] deporte : deportes) { %>
        <li>
            <img src="<%= deporte[3] %>" alt="<%= deporte[0] %>">
            <div class="info">

                <div><strong>Número de jugadores:</strong> <%= deporte[1] %></div>
                <div><strong>Duración del partido:</strong> <%= deporte[2] %></div>
            </div>
        </li>
        <% } %>
    </ul>
</section>

</body>
</html>