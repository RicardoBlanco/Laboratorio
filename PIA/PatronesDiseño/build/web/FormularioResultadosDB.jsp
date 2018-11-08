<%@page import="Java.Configurador"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            
            Cookie[] cookieEmpleo =  request.getCookies();        
            String valor = null;
                
            for (Cookie cookie : cookieEmpleo) {
                if (cookie.getName().equals("empleo")) {
                    valor = cookie.getValue();
                }
            }
            Configurador miConfig = Configurador.getMiConfiguracion();

            Connection con = DriverManager.getConnection(miConfig.getUrl(), miConfig.getUsuario(), miConfig.getPassword());
            
            Statement stmt = con.createStatement();
            
            String sql;
            sql = miConfig.getSql();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                String primer = rs.getString("primer");
                String segundo = rs.getString("Segundo");
                String nombre = rs.getString("Nombre");
                String fecha = rs.getString("Fecha");
                String password = rs.getString("Password");
                String correo = rs.getString("Correo");
        %>
                <h1>Laboratorio 9</h1>
                Profesion: Soy <%=valor%>
                Nombre: <%=nombre %><br><br>
                Primer Apellido: <%=primer%><br><br>
                Segundo Apellido: <%=segundo%><br><br>
                Fecha Nacimiento: <%=fecha %><br><br>
                Correo Electronico: <%=correo%><br><br>
                Contraseña: <%=password%>
                <form action="DeletedCookies.jsp" method="POST">
                    <input type="submit" value="Cerrar Sesion"/>   
                </form>
        <%  }   %>
    </body>
</html>