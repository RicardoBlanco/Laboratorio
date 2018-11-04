<%-- 
    Document   : DeletedCookies
    Created on : 4/11/2018, 01:50:16 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 8</title>
        <style>
            body{
                background-color:rgb(240, 240, 240);
                font-family:Arial;
                font-size: 30px;
            }
            h1,p{
                text-align: center;
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
        <h1>Laboratorio 8</h1>
        <p>Sesion Cerrada</p>
    </head>
    <body>
        
    </body>
</html>
