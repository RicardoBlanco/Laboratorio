<%-- 
    Document   : JSP
    Created on : 19/09/2018, 06:53:31 PM
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
            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }
            input[type=password], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }
            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }
        </style>
    </head>
    <body>
        <hr/>
        <center><h1>Laboratorio 4</h1></center>
        <hr/>
        <form action="JSP2.jsp" method="POST">
        Nombre:<input type="text" name="nombre"/><br>
        Primer Apellido:<input type="text" name="primer"/><br>
        Segundo Apellido:<input type="text" name="segundo"/><br>
        Fecha Nacimiento:<input type="text" name="fecha"/><br>
        Correo Electronico:<input type="text" name="correo"/><br>
        Contraseña:<input type="password" name="password"/><br>
        <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
