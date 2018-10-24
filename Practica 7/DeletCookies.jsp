<%-- 
    Document   : DeletCookies
    Created on : 24/10/2018, 01:59:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 7</title>
        <style>
            body{
                background-color:rgb(240, 240, 240);
                font-family:Arial;
                font-size: 30px;
            }
            h1{
                text-align: center;
            }
            p{
                font-size: 40px;
            }
        </style>
    </head>
    <body>
        <% 
            Cookie cookie = null;
            Cookie[] cookies = null;
            
            cookies = request.getCookies();
            
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        %>
        <h1>Laboratorio 7</h1>
        <p>Sesion Cerrada</p>
        <a href="index.jsp">Inicio</a>
    </body>
</html>