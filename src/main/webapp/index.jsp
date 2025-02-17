<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Página de Bienvenida</title>
    <!-- Se vincula el archivo CSS externo -->
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>
<!-- Encabezado con título, autores y descripción -->
<header>
    <h1>Título del Trabajo: Mi Proyecto Web en JSP</h1>
    <p>Autores: Adrián Chao Béjar <br>
                    María Zújar <br>
                    Maria Bernabé <br>
                    Alvaro Muñoz Dominguez</p>
    <p>Descripción: Esta aplicación muestra un ejemplo de una página JSP que integra un formulario, navegación a otras páginas y un listado de elementos con diversos atributos.</p>
</header>

<!-- Sección del formulario para datos personales -->
<section>
    <h2>Formulario de Datos Personales</h2>
    <form action="VerZodiaco.jsp" method="post">
        <div>
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>
        <div>
            <label for="apellido">Apellido:</label>
            <input type="text" id="apellido" name="apellido" required>
        </div>
        <div>
            <label for="fechaNacimiento">Fecha de Nacimiento:</label>
            <input type="date" id="fechaNacimiento" name="fechaNacimiento" required>
        </div>
        <div>
            <button type="submit">Enviar Datos</button>
        </div>
    </form>

</section>

<!-- Sección de navegación -->
<section>
    <h2>Navegación</h2>
    <div>
        <!-- Botón que redirige a la página verZodiaco.jsp -->
        <button onclick="window.location.href='VerZodiaco.jsp'">Ver Zodiaco</button>
    </div>
    <div>
        <!-- Enlaces a las páginas verLista.jsp y listarTabla.jsp -->
        <a href="VerLista.jsp">Ver Lista</a>
        <br>
        <a href="VerTabla.jsp">Listar Tabla</a>
    </div>
</section>

<!-- Sección con listado de elementos -->
<section>
    <h2>Listado de Elementos</h2>
    <p>A continuación se muestra un listado de 5 elementos. Dos elementos pertenecen al grupo "Países" y tres al grupo "Deportes".</p>

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

        <!-- Elementos del grupo "Deportes" -->
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
    </ul>
</section>

<footer>
    <p>© 2025 Mi Proyecto Web en JSP</p>
</footer>
</body>
</html>
