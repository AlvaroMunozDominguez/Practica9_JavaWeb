<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="org.example.practica9.Persona" %>
<%
    // Obtener la lista de personas desde la sesión
    List<Persona> personas = (List<Persona>) session.getAttribute("personas");

    // Si la lista no existe en la sesión, la creamos y añadimos los valores iniciales
    if (personas == null) {
        personas = new ArrayList<>();
        personas.add(new Persona("Carlos", "Gómez", LocalDate.of(1990, 3, 15), "Images/101.jpg"));
        personas.add(new Persona("Ana", "López", LocalDate.of(1985, 7, 22), "Images/102.jpg"));
        personas.add(new Persona("Pedro", "Martínez", LocalDate.of(2000, 11, 5), "Images/103.jpg"));
        session.setAttribute("personas", personas); // Guardar la lista en la sesión
    }

    // Procesar datos del formulario (cuando el usuario ingresa una nueva persona)
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String fechaStr = request.getParameter("fechaNacimiento");

    if (nombre != null && apellido != null && fechaStr != null) {
        LocalDate fechaNacimiento = LocalDate.parse(fechaStr);
        Persona nuevaPersona = new Persona(nombre, apellido, fechaNacimiento, "Images/default.jpg");
        personas.add(nuevaPersona);
        session.setAttribute("personas", personas); // Actualizar la lista en la sesión

        // Evitar reenvío del formulario con F5
        //response.sendRedirect("index.jsp");
        //return;
        session.setAttribute("personas", personas);
    }
%>
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
    <form action="index.jsp" method="post">
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
            <label for="imgUrl">Imagen de perfil:</label>
            <input type="file" id="imgUrl" name="imgUrl" accept="image/*" >
        </div>
        <div>
            <button type="submit" >Enviar Datos</button>
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