<%-- 
    Document   : index2
    Created on : 20 abr 2023, 19:23:35
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Agregar mascota</h1>
        <form action="agregarMascota.jsp" method="post">
            <label for="tipoMascota">Tipo de mascota:</label>
            <select name="tipoMascota" id="tipoMascota">
                <option value="canino">Canino</option>
                <option value="felino">Felino</option>
            </select><br><br>

            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" required><br><br>

            <label for="raza">Raza:</label>
            <input type="text" name="raza" id="raza" required><br><br>

            <label for="color">Color:</label>
            <input type="text" name="color" id="color" required><br><br>

            <label for="edad">Edad(anios):</label>
            <input type="number" name="edad" id="edad" min="0" max="100" required><br><br>

            <div id="campoEntrenamiento">
                <label for="nivelEntrenamiento">Nivel de entrenamiento:</label>
                <input type="number" name="nivelEntrenamiento" id="nivelEntrenamiento" min="0" max="10" required><br><br>
            </div>

            <div id="campoToxoplasmosis" style="display: none;">
                <label for="libreToxoplasmosis">Libre de toxoplasmosis:</label>
                <input type="checkbox" name="libreToxoplasmosis" id="libreToxoplasmosis" required><br><br>
            </div>

            <input type="submit" value="Agregar">
            <button onclick="window.location.href='consultarMascotas.jsp'" type="button">Volver al listado de mascotas</button>
        </form>

        <script>
            var tipoMascota = document.getElementById('tipoMascota');
            var campoEntrenamiento = document.getElementById('campoEntrenamiento');
            var campoToxoplasmosis = document.getElementById('campoToxoplasmosis');

            tipoMascota.addEventListener('change', function () {
                if (tipoMascota.value === 'canino') {
                    campoEntrenamiento.style.display = 'block';
                    campoToxoplasmosis.style.display = 'none';
                } else {
                    campoEntrenamiento.style.display = 'none';
                    campoToxoplasmosis.style.display = 'block';
                }
            });
        </script>
        
            
        
    </body>
</html>
