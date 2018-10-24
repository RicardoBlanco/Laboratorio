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
        <h1>Laboratorio 7</h1>
        Nombre: <%= request.getParameter("nombre") %><br><br>
        Primer Apellido: <%= request.getParameter("primer") %><br><br>
        Segundo Apellido: <%= request.getParameter("segundo") %><br><br>
        Fecha Nacimiento: <%= request.getParameter("fecha") %><br><br>
        Correo Electronico: <%= request.getParameter("correo") %><br><br>
        Contraseña: <%= request.getParameter("password") %>
        <form action="DeletCookies.jsp" method="POST">
            <input type="submit" value="Cerrar Sesion"/>   
        </form>
        <%
    
                Cookie cookieNombre = new Cookie("nombre", request.getParameter("nombre"));
                cookieNombre.setMaxAge(60*60*2); 
                response.addCookie(cookieNombre);
            
                Cookie cookieSegundo = new Cookie("segundo",request.getParameter("segundo"));
                cookieSegundo.setMaxAge(60*60*2); 
                response.addCookie(cookieSegundo);
           
                Cookie cookiePrimer = new Cookie("primer",request.getParameter("primer"));
                cookiePrimer.setMaxAge(60*60*2); 
                response.addCookie(cookiePrimer);
            
                Cookie cookieCorreo = new Cookie("correo",request.getParameter("correo"));
                cookieCorreo.setMaxAge(60*60*2); 
                response.addCookie(cookieCorreo);
            
                Cookie cookieFecha = new Cookie("fecha",request.getParameter("fecha"));
                cookieFecha.setMaxAge(60*60*2); 
                response.addCookie(cookieFecha);
            
                Cookie cookiePassword = new Cookie("password",request.getParameter("password"));
                cookiePassword.setMaxAge(60*60*2); 
                response.addCookie(cookiePassword);
        %>
    </body>
</html>
