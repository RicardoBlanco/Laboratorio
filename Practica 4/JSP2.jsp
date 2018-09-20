<%-- 
    Document   : JSP2
    Created on : 19/09/2018, 07:07:50 PM
    Author     : LSTI204_B8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 4</title>
        <style>
            body{
                background-color:rgb(240, 240, 240);
                font-family:Arial;
            }
        </style>
    </head>
    <body>
        <%--
        String nombre = request.getParameter("nombre");
        String primer = request.getParameter("primer");
        String segundo = request.getParameter("segundo");
        String fecha = request.getParameter("fecha");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        --%>
        <hr/>
        <center><h1>Formulario</h1></center>
        <hr/>
        <p>Nombre:  <%= request.getParameter("nombre")%></p>
        <p>Primer Apellido: <%= request.getParameter("primer")%></p>
        <p>Segundo Apellido:  <%= request.getParameter("segundo")%></p>
        <p>Fecha de Nacimiento: <%= request.getParameter("fecha")%></p>
        <p>Correo Electronico:  <%= request.getParameter("correo")%></p>
        <p>Contraseña:  <%= request.getParameter("password")%></p>
    </body>
</html>
