<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 6</title>
        <style>
            body{
                background-color:rgb(240, 240, 240);
                font-family:Arial;
                font-size: 30px;
            }
            h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Laboratorio 6</h1>
        Nombre: <%= request.getParameter("nombre") %><br><br>
        Primer Apellido: <%= request.getParameter("primer") %><br><br>
        Segundo Apellido: <%= request.getParameter("segundo") %><br><br>
        Fecha Nacimiento: <%= request.getParameter("fecha") %><br><br>
        Correo Electronico: <%= request.getParameter("correo") %><br><br>
        Contraseña: <%= request.getParameter("password") %>
    </body>
</html>
