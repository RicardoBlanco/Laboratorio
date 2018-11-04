package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class FormularioResultadosDB_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Laboratorio 8</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-color:rgb(240, 240, 240);\n");
      out.write("                font-family:Arial;\n");
      out.write("                font-size: 30px;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            input[type=submit] {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
  
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
        
      out.write("\n");
      out.write("                <h1>Laboratorio 8</h1>\n");
      out.write("                Nombre: ");
      out.print(nombre );
      out.write("<br><br>\n");
      out.write("                Primer Apellido: ");
      out.print(primer);
      out.write("<br><br>\n");
      out.write("                Segundo Apellido: ");
      out.print(segundo);
      out.write("<br><br>\n");
      out.write("                Fecha Nacimiento: ");
      out.print(fecha );
      out.write("<br><br>\n");
      out.write("                Correo Electronico: ");
      out.print(correo);
      out.write("<br><br>\n");
      out.write("                Contraseña: ");
      out.print(password);
      out.write("\n");
      out.write("                <form action=\"DeletCookies.jsp\" method=\"POST\">\n");
      out.write("                    <input type=\"submit\" value=\"Cerrar Sesion\"/>   \n");
      out.write("                </form>\n");
      out.write("        ");
  }   
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
