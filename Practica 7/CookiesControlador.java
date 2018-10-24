/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class CookiesControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            
            Cookie[] cookie1 =  request.getCookies();
            String valor1 = null;
                
            Cookie[] cookie2 =  request.getCookies();            
            String valor2 = null;
                                
            Cookie[] cookie3 =  request.getCookies();
            String valor3 = null;
                
            Cookie[] cookie4 =  request.getCookies();          
            String valor4 = null;
             
            Cookie[] cookie5 =  request.getCookies();           
            String valor5 = null;
                
            Cookie[] cookie6 =  request.getCookies();        
            String valor6 = null;
                
                for (Cookie cookie : cookie1) {
                    if (cookie.getName().equals("primer")) {
                        valor1 = cookie.getValue();
                    }
                }
            
                for (Cookie cookie : cookie2) {
                    if (cookie.getName().equals("segundo")) {
                        valor2 = cookie.getValue();
                    }
                }
 
                for (Cookie cookie : cookie3) {
                    if (cookie.getName().equals("correo")) {
                        valor3 = cookie.getValue();
                    }
                }
 
                for (Cookie cookie : cookie4) {
                    if (cookie.getName().equals("fecha")) {
                        valor4 = cookie.getValue();
                    }
                }
 
                for (Cookie cookie : cookie5) {
                    if (cookie.getName().equals("password")) {
                        valor5 = cookie.getValue();
                    }
                }

                for (Cookie cookie : cookie6) {
                    if (cookie.getName().equals("nombre")) {
                        valor6 = cookie.getValue();
                    }
                }
                response.sendRedirect("FormularioResultados.jsp?nombre="+ valor6 +"&primer="+ valor1 +"&segundo="+ valor2 +"&correo="+ valor3 +"&fecha="+ valor4 +"&password="+ valor5);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
