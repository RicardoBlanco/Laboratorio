<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            String DB_URL="jdbc:derby://localhost:1527/Formulario";
            String USER = "Ricardo";
            String PASS = "8661718098";

            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            
            Statement stmt = con.createStatement();
            
            String sql;
            sql = "SELECT Nombre, Primer, Segundo, Fecha, Correo, Password FROM Formulario";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                String primer = rs.getString("primer");
                String segundo = rs.getString("Segundo");
                String nombre = rs.getString("Nombre");
                String fecha = rs.getString("Fecha");
                String password = rs.getString("Password");
                String correo = rs.getString("Correo");
        %>
                <h1>Laboratorio 8</h1>
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