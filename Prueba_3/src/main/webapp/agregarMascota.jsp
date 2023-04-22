<%-- 
    Document   : agregarMascota
    Created on : 20 abr 2023, 17:13:54
    Author     : USUARIO
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="recursosJava.Mascota"%>
<%@ page import="recursosJava.Canino"%>
<%@ page import="recursosJava.Felino"%>
<%@ page import="recursosJava.AgregarMascotas"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar mascota</title>
    </head>
    <body>
        <%
            AgregarMascotas agregarMascotas = (AgregarMascotas) application.getAttribute("agregarMascotas");
            if (agregarMascotas == null) {
                agregarMascotas = new AgregarMascotas();
                application.setAttribute("agregarMascotas", agregarMascotas);
            }
    
            // Obtener los datos de la mascota enviados por el formulario
            String nombre = request.getParameter("nombre");
            String raza = request.getParameter("raza");
            String color = request.getParameter("color");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String tipoMascota = request.getParameter("tipoMascota");
    
            // Crear la mascota y agregarla a la lista correspondiente
            if (tipoMascota.equalsIgnoreCase("canino")) {
                int nivelEntrenamiento = Integer.parseInt(request.getParameter("nivelEntrenamiento"));
                Canino canino = new Canino(nombre, raza, color, edad, nivelEntrenamiento);
                agregarMascotas.agregarMascota(canino);
            } else {
                boolean libreToxoplasmosis = Boolean.parseBoolean(request.getParameter("libreToxoplasmosis"));
                Felino felino = new Felino(nombre, raza, color, edad, libreToxoplasmosis);
                agregarMascotas.agregarMascota(felino);
            }
    
            response.sendRedirect("consultarMascotas.jsp");
        %>
    </body>
</html>

