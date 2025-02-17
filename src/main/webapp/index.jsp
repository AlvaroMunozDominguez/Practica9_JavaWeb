<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Página de Bienvenida</title>
    <!-- Se vincula el archivo CSS externo -->
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<body>
<!-- Encabezado con título, autores y descripción -->
<header>
    <h1>Título del Trabajo: Mi Proyecto Web en JSP</h1>
    <p>Autores: Juan Pérez, María Gómez</p>
    <p>Descripción: Esta aplicación muestra un ejemplo de una página JSP que integra un formulario, navegación a otras páginas y un listado de elementos con diversos atributos.</p>
</header>

<!-- Sección del formulario para datos personales -->
<section>
    <h2>Formulario de Datos Personales</h2>
    <form action="procesarFormulario.jsp" method="post">
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
    <p>A continuación se muestra un listado de 5 elementos. Dos elementos pertenecen al grupo "Países" y tres al grupo "Deportes". Cada elemento incluye atributos de texto (nombre y grupo), numérico, imagen y fecha.</p>
    <ul>
        <!-- Elementos del grupo "Países" -->
        <li>
            <strong>Nombre:</strong> España <br>
            <strong>Grupo:</strong> Países <br>
            <strong>Valor Numérico:</strong> 34 <br>
            <strong>Imagen:</strong> <img src="images/espana.png" alt="España" width="50"> <br>
            <strong>Fecha:</strong> 2025-02-16
        </li>
        <li>
            <strong>Nombre:</strong> Francia <br>
            <strong>Grupo:</strong> Países <br>
            <strong>Valor Numérico:</strong> 28 <br>
            <strong>Imagen:</strong> <img src="images/francia.png" alt="Francia" width="50"> <br>
            <strong>Fecha:</strong> 2025-02-16
        </li>
        <!-- Elementos del grupo "Deportes" -->
        <li>
            <strong>Nombre:</strong> Baloncesto <br>
            <strong>Grupo:</strong> Deportes <br>
            <strong>Valor Numérico:</strong> 12 <br>
            <strong>Imagen:</strong> <img src="images/baloncesto.png" alt="Baloncesto" width="50"> <br>
            <strong>Fecha:</strong> 2025-02-16
        </li>
        <li>
            <strong>Nombre:</strong> Fútbol <br>
            <strong>Grupo:</strong> Deportes <br>
            <strong>Valor Numérico:</strong> 22 <br>
            <strong>Imagen:</strong> <img src="images/futbol.png" alt="Fútbol" width="50"> <br>
            <strong>Fecha:</strong> 2025-02-16
        </li>
        <li>
            <strong>Nombre:</strong> Tenis <br>
            <strong>Grupo:</strong> Deportes <br>
            <strong>Valor Numérico:</strong> 18 <br>
            <strong>Imagen:</strong> <img src="images/tenis.png" alt="Tenis" width="50"> <br>
            <strong>Fecha:</strong> 2025-02-16
        </li>
    </ul>
</section>

<footer>
    <p>© 2025 Mi Proyecto Web en JSP</p>
</footer>
</body>
</html>
