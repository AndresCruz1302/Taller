<%-- 
    Document   : retirarMascota
    Created on : 20 abr 2023, 17:12:36
    Author     : USUARIO
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="recursosJava.Mascota" %>
<%@ page import="recursosJava.AgregarMascotas"%>
<%@ page import="recursosJava.Canino" %>
<%@ page import="recursosJava.Felino" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Retirar Mascota</title>
</head>
<body>
    <%
        // Obtener el gestor de mascotas
        AgregarMascotas gestor = (AgregarMascotas) application.getAttribute("agregarMascotas");
        if (gestor == null) {
            gestor = new AgregarMascotas();
            application.setAttribute("agregarMascotas", gestor);
        }

        // Obtener el id de la mascota a retirar
        String idRetirarParam = request.getParameter("idRetirar");
        int idRetirar = 0;
        if (idRetirarParam != null && !idRetirarParam.isEmpty()) {
            idRetirar = Integer.parseInt(idRetirarParam);
        }

        // Si el id de la mascota a retirar es válido, buscar la mascota y retirarla
        if (idRetirar != 0) {
            ArrayList<Mascota> mascotas = gestor.obtenerMascotas();
            for (int i = 0; i < mascotas.size(); i++) {
                if (mascotas.get(i).getId() == idRetirar) {
                    gestor.eliminarMascota(i);
                    break;
                }
            }
        }

        // Redirigir al listado de mascotas
        response.sendRedirect("consultarMascotas.jsp");
    %>
</body>
</html>