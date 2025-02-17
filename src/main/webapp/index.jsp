<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio</title>
    <!-- Se vincula el archivo CSS externo -->
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>
<!-- Encabezado con título, autores y descripción -->
<header>
    <h1>Proyecto Java Web</h1>
    <p>Autores: Adrián Chao Béjar <br>
                    María Zújar <br>
                    Maria Bernabé <br>
                    Alvaro Muñoz Dominguez</p>
    <p>Esta aplicación muestra un ejemplo de una página JSP que integra un formulario, navegación a otras páginas y un listado de elementos con diversos atributos.</p>
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

<footer>
    <p>© 2025 Mi Proyecto Web en JSP</p>
</footer>
</body>
</html>
