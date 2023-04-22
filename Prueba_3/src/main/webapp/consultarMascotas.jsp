<%-- 
    Document   : consultarMascotas
    Created on : 20 abr 2023, 23:28:56
    Author     : USUARIO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="recursosJava.Mascota"%>
<%@ page import="recursosJava.Felino" %>
<%@ page import="recursosJava.Canino" %>
<%@ page import="recursosJava.AgregarMascotas"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style2.css" rel="stylesheet" type="text/css">
        <title>Listado de mascotas</title>
    </head>
    <body>
        <% 
            AgregarMascotas gestor = (AgregarMascotas) application.getAttribute("agregarMascotas");
            if (gestor == null) {
                gestor = new AgregarMascotas();
                application.setAttribute("agregarMascotas", gestor);
            }

            ArrayList<Mascota> mascotas = gestor.obtenerMascotas();

            // Obtener la cantidad total de mascotas y la cantidad de cada tipo
            int totalMascotas = mascotas.size();
            int totalCaninos = 0;
            int totalFelinos = 0;
            double promedioEdad = 0.0;
            for (Mascota mascota : mascotas) {
                if (mascota instanceof Canino) {
                    totalCaninos++;
                } else if (mascota instanceof Felino) {
                    totalFelinos++;
                }
            }
            // Calcular el promedio de edad de todas las mascotas
double edadPromedio = 0;
if (totalMascotas > 0) {
    int sumEdades = 0;
    for (Mascota mascota : mascotas) {
        sumEdades += mascota.getEdad();
    }
    edadPromedio = (double) sumEdades / totalMascotas;
}

// Mostrar los resultados en la página
%>
<h1>Lista de Mascotas</h1>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Raza</th>
            <th>Color</th>
            <th>Edad</th>
            <th>Tipo</th>
            <th>Atributo especial</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <% if (mascotas.isEmpty()) { %>
        <p>No hay mascotas registradas.</p>
        <% } else { %>
        <% for (Mascota mascota : mascotas) { %>
        <tr>
            <td><%= String.valueOf(mascota.getId()) %></td>
            <td><%= mascota.getNombre() %></td>
            <td><%= mascota.getRaza() %></td>
            <td><%= mascota.getColor() %></td>
            <td><%= mascota.getEdad() %></td>
            <td><%= mascota.getTipo() %></td>
            <td>
                <% if (mascota instanceof Canino) { %>
                <%= ((Canino) mascota).getNivelEntrenamiento() %>
                <% } else if (mascota instanceof Felino) { %>
                <%= ((Felino) mascota).isLibreDeToxoplasmosis() %>
                <% } %>
            </td>
            <td>
                <form action="retirarMascota.jsp" method="post">
                    <input type="hidden" name="idRetirar" value="<%= mascota.getId() %>">
                    <button type="submit" class="btn btn-danger">Retirar</button>
                </form>
            </td>
        </tr>
        <% } %>
        <% } %>
    </tbody>
</table>
<p>Total de mascotas: <%= totalMascotas %></p>
<p>Total de caninos: <%= totalCaninos %></p>
<p>Total de felinos: <%= totalFelinos %></p>
<p>Edad promedio de las mascotas: <%= String.format("%.2f", edadPromedio) %></p>
<a href="index2.jsp">Agregar mascota</a>
    </body>
</html>

