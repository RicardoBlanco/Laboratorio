<%@page import="Empleos.Empleos"%>
<%@page import="Empleos.FabricaEmpleos"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorio 9</title>
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
            String empleo = request.getParameter("empleo");
            FabricaEmpleos miFabrica = new FabricaEmpleos();   
            Empleos resultado = miFabrica.getEmpleo(empleo);
            
            String sesiones = null;
            Cookie sesion = new Cookie("sesion", sesiones);
            sesion.setMaxAge(60*60*2); 
            response.addCookie(sesion);
            
            String cookie = request.getParameter("empleo");
            Cookie cookieEmpleo = new Cookie("empleo", cookie);
            cookieEmpleo.setMaxAge(60*60*2); 
            response.addCookie(cookieEmpleo);
        %>
        <h1>Laboratorio 9</h1>
        Profesion: <%resultado.contratado();%>
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
