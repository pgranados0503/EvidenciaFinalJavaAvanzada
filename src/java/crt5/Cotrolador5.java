
package crt5;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo2.Registro;

public class Cotrolador5 extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Registro obje=new Registro();
        obje.setUsuario(request.getParameter("usuario"));
        obje.setContraseña(request.getParameter("pass"));
        obje.setNombre(request.getParameter("nombre"));
        obje.setEdad(Double.parseDouble(request.getParameter("edad")));
        obje.setSexo(request.getParameter("sexo"));
        obje.setEstatura(Double.parseDouble(request.getParameter("estatura")));
        request.setAttribute("ObetoJava", obje);
        try (PrintWriter out = response.getWriter()) {
            
            if(request.getAttribute("flag")!=null)
        {
            request.setAttribute("flag", 1);
            request.getRequestDispatcher("/Registro.jsp").forward(request, response);
        }
            
            RequestDispatcher o=request.getRequestDispatcher("index.jsp");
            o.forward(request, response);
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
