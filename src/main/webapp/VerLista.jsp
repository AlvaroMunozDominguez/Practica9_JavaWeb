<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 17/02/2025
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>VerLista</title>
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>
<!-- Sección con listado de elementos -->
<section>
    <h2>Listado de Elementos</h2>
    <p>Listado de elementos de distintos tipos</p>

    <ul>
        <!-- Elementos del grupo "Países" -->
        <li>
            <img src="Images/spain.jpg" alt="España">
            <div class="info">
                <div><strong>Ciudad:</strong> Sevilla</div>
                <div><strong>Pais:</strong> España</div>
                <div><strong>Tasa PIB:</strong> 2,5%</div>
            </div>
        </li>
        <li>
            <img src="Images/paris.jpg" alt="Francia">
            <div class="info">
                <div><strong>Ciudad:</strong> Paris</div>
                <div><strong>Pais:</strong> Francia</div>
                <div><strong>Tasa PIB:</strong> 0,7%</div>
            </div>
        </li>
        <li>
            <img src="Images/germany.jpg" alt="Alemania">
            <div class="info">
                <div><strong>Ciudad:</strong> Amsterdam</div>
                <div><strong>Pais:</strong> Alemania</div>
                <div><strong>Tasa PIB:</strong> -0,3%</div>
            </div>
        </li>
        <li>
            <img src="Images/Italy.jpg" alt="Italia">
            <div class="info">
                <div><strong>Ciudad:</strong> Milan</div>
                <div><strong>Pais:</strong> Italia</div>
                <div><strong>Tasa PIB:</strong> 0,9%</div>
            </div>
        </li>
        <li>
            <img src="Images/england.jpg" alt="Inglaterra">
            <div class="info">
                <div><strong>Ciudad:</strong> Londres</div>
                <div><strong>Pais:</strong> Inglaterra</div>
                <div><strong>Tasa PIB:</strong> 0,9%</div>
            </div>
        </li>

        <!-- Elementos del grupo "Deportes" -->
        <li>
            <img src="Images/basket.jpg" alt="Baloncesto">
            <div class="info">
                <div><strong>Número de jugadores:</strong> 5 jugadores</div>
                <div><strong>Duración del partido:</strong> 40 minutos</div>
            </div>
        </li>
        <li>
            <img src="Images/football.jpg" alt="Fútbol">
            <div class="info">
                <div><strong>Número de jugadores:</strong> 11 jugadores</div>
                <div><strong>Duración del partido:</strong> 90 minutos</div>
            </div>
        </li>
        <li>
            <img src="Images/balonmano.jpg" alt="Balonmano">
            <div class="info">
                <div><strong>Número de jugadores:</strong> 7 jugadores</div>
                <div><strong>Duración del partido:</strong> 60 minutos</div>
            </div>
        </li>
    </ul>
</section>
</body>
</html>
