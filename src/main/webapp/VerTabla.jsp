<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>VerTabla</title>
    <!-- Enlace al archivo CSS externo -->
    <link rel="stylesheet" type="text/css" href="CSS/styleIndex.css">
</head>
<body>

<!-- Sección con listado de elementos -->
<section>
    <h2>Listado de Elementos</h2>
    <p>Listado de países y continentes (sin imágenes)</p>

    <!-- Tabla con los elementos de Países -->
    <h3>Países</h3>
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
            <!-- Elementos del grupo "Países" -->
            <tr>
                <td>Sevilla</td>
                <td>España</td>
                <td>2,5%</td>
            </tr>
            <tr>
                <td>Paris</td>
                <td>Francia</td>
                <td>0,7%</td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Tabla con los elementos de Continentes -->
    <h3>Continentes</h3>
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
            <!-- Elementos del grupo "Continentes" -->
            <tr>
                <td>Tokio</td>
                <td>Asia</td>
                <td>3,2%</td>
            </tr>
            <tr>
                <td>Cairo</td>
                <td>África</td>
                <td>-0,1%</td>
            </tr>
            <tr>
                <td>Buenos Aires</td>
                <td>América</td>
                <td>1,5%</td>
            </tr>
            </tbody>
        </table>
    </div>
</section>

</body>
</html>
