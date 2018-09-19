import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Formulario", urlPatterns = {"/Formulario"})
public class Formulario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Laboratorio3</title>");
            out.println("<style>");
            out.println("body{background-color:rgb(240, 240, 240);"
            + "font-family:Arial;}");
            out.println("input[type=text], select, textarea {\n" +
            "width: 100%;\n" + "padding: 12px;\n" + "border: 1px solid #ccc;\n" +
            "border-radius: 4px;\n" + "resize: vertical;\n" +"}");
            out.println("input[type=password], select, textarea {\n" +
            "width: 100%;\n" + "padding: 12px;\n" + "border: 1px solid #ccc;\n" +
            "border-radius: 4px;\n" + "resize: vertical;\n" +"}");
            out.println("input[type=submit] {\n" +"background-color: #4CAF50;\n" +
            "color: white;\n" + "padding: 12px 20px;\n" + "border: none;\n" +
            "border-radius: 4px;\n" + "cursor: pointer;\n" + "float: right;\n" +
            "}\n" + "\n" + "input[type=submit]:hover {\n" + "background-color: #45a049;\n" + "}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<hr/>");
            out.println("<center><h1>Laboratorio 3</h1></center>");
            out.println("<hr/>"); 
            out.println("<form action=\"Formulario\" method=\"POST\">");
            out.println("Nombre:<input type=\"text\" name=\"nombre\"/><br>");
            out.println("Primer Apellido:<input type=\"text\" name=\"primer\"/><br>");
            out.println("Segundo Apellido:<input type=\"text\" name=\"segundo\"/><br>");
            out.println("Fecha Nacimiento:<input type=\"text\" name=\"fecha\"/><br>");
            out.println("Correo Electronico:<input type=\"text\" name=\"correo\"/><br>");
            out.println("Contraseña:<input type=\"password\" name=\"password\"/><br>");
            out.println("<input type=\"submit\" value=\"Enviar\"/>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("nombre");
            String primer = request.getParameter("primer");
            String segundo = request.getParameter("segundo");
            String fecha = request.getParameter("fecha");
            String correo = request.getParameter("correo");
            String password = request.getParameter("password");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Laboratorio3</title>");
            out.println("<style>");
            out.println("body{background-color:rgb(240, 240, 240);"
            + "font-family:Arial;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<hr/>");
            out.println("<center><h1>Formulario</h1></center>");
            out.println("<hr/>"); 
            out.println("<p>Nombre: "+nombre+"</p>");
            out.println("<p>Primer Apellido:"+primer+"</p>");
            out.println("<p>Segundo Apellido: "+segundo+"</p>");
            out.println("<p>Fecha de Nacimiento: "+fecha+"</p>");
            out.println("<p>Correo Electronico: "+correo+"</p>");
            out.println("<p>Contraseña: "+password+"</p>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
