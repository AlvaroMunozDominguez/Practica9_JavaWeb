<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<html>
<head>
    <title>Ver Tabla</title>
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>

<%
    // Lista de países [Ciudad, País, Tasa PIB]
    List<String[]> paises = new ArrayList<>();
    paises.add(new String[]{"Sevilla", "España", "2,5%"});
    paises.add(new String[]{"París", "Francia", "0,7%"});
    paises.add(new String[]{"Roma", "Italia", "1,2%"});
    paises.add(new String[]{"Berlín", "Alemania", "2,0%"});

    // Lista de continentes [Ciudad, Continente, Tasa PIB]
    List<String[]> continentes = new ArrayList<>();
    continentes.add(new String[]{"Tokio", "Asia", "3,2%"});
    continentes.add(new String[]{"Cairo", "África", "-0,1%"});
    continentes.add(new String[]{"Buenos Aires", "América", "1,5%"});
    continentes.add(new String[]{"Sídney", "Oceanía", "2,8%"});

    // Guardar en sesión si se usará en otra página
    session.setAttribute("paises", paises);
    session.setAttribute("continentes", continentes);
%>

<section>
    <h2>Listado de Países</h2>
    <div class="responsive-table">
        <table>
            <thead>
            <tr>
                <th>Ciudad</th>
                <th>País</th>
                <th>Tasa PIB</th>
            </tr>
            </thead>
            <tbody>
            <% for (String[] pais : paises) { %>
            <tr>
                <td><%= pais[0] %></td> <!-- Ciudad -->
                <td><%= pais[1] %></td> <!-- País -->
                <td><%= pais[2] %></td> <!-- Tasa PIB -->
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</section>

<section>
    <h2>Listado de Continentes</h2>
    <div class="responsive-table">
        <table>
            <thead>
            <tr>
                <th>Ciudad</th>
                <th>Continente</th>
                <th>Tasa PIB</th>
            </tr>
            </thead>
            <tbody>
            <% for (String[] continente : continentes) { %>
            <tr>
                <td><%= continente[0] %></td> <!-- Ciudad -->
                <td><%= continente[1] %></td> <!-- Continente -->
                <td><%= continente[2] %></td> <!-- Tasa PIB -->
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</section>

</body>
</html>
