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
            h1{
                text-align: center;
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
        <%         
            String sesiones = null;
            Cookie sesion = new Cookie("sesion", sesiones);
            sesion.setMaxAge(60*60*2); 
            response.addCookie(sesion);
        %>
        <h1>Laboratorio 8</h1>
        Nombre: <%= request.getParameter("nombre") %><br><br>
        Primer Apellido: <%= request.getParameter("primer") %><br><br>
        Segundo Apellido: <%= request.getParameter("segundo") %><br><br>
        Fecha Nacimiento: <%= request.getParameter("fecha") %><br><br>
        Correo Electronico: <%= request.getParameter("correo") %><br><br>
        Contraseña: <%= request.getParameter("password") %>
        <form action="DeletedCookies.jsp" method="POST">
            <input type="submit" value="Cerrar Sesion"/>   
        </form>
    </body>
</html>
