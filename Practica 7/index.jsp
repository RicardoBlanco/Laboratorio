<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Laboratorio 7</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            h1{
                text-align: center;
            }
        </style>
    </head>
       <% 
            Cookie[] cookies = null;
            
            cookies = request.getCookies();
            
            if(cookies != null){
                response.sendRedirect("CookiesControlador");
            }else{

        %>
    <body>
        <h1>Laboratorio 7</h1>
        <form action="/LoginCookies/FormularioControlador" method="GET">
           Nombre:<input type="text" name="nombre"/><br>
           Primer Apellido:<input type="text" name="primer"/><br>
           Segundo Apellido:<input type="text" name="segundo"/><br>
           Fecha Nacimiento:<input type="text" name="fecha"/><br>
           Correo Electronico:<input type="text" name="correo"/><br>
           Contraseņa:<input type="password" name="password"/><br>
            <input type="submit" value="Enviar"/>   
        </form>
        <% } %>
    </body>
</html>