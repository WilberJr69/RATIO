package mvcCONTROLLER;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvcDAO.LoginDAO;
import mvcMODEL.Cliente;

public class LoginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
        response.setContentType("text/html;charset=UTF-8");
        boolean resultadoValidacionLoginCliente;
        
        try ( PrintWriter out = response.getWriter()) {
            
            String
            correoCliente           = request.getParameter("correoCliente"),
            passwordCliente         = request.getParameter("passwordCliente")
            ;
            
            /*Ejecución de Model*/
            Cliente datosLoginCliente = new Cliente();
            
            
            
            /*Ejecución del DAO*/
            
            LoginDAO loginDAO = new LoginDAO();
            resultadoValidacionLoginCliente = loginDAO.validarLoginCliente(correoCliente, passwordCliente);
            
            if (resultadoValidacionLoginCliente == true){
                
                datosLoginCliente.setCorreoClietne(correoCliente);
                datosLoginCliente.setPasswordCliente(passwordCliente);
                
                HttpSession sesion = request.getSession();
                sesion.setAttribute("correoCliente", correoCliente);
                
                
                
                response.sendRedirect("ratioVistaCliente/index.jsp");
                
                
            }else{
                request.setAttribute("accesoDenegado", 0);
                response.sendRedirect("ratioVistaCliente/login.jsp");
            }
            
            
            
            
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
     * @throws java.io.UnsupportedEncodingException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, UnsupportedEncodingException {
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException | InvalidKeyException | NoSuchPaddingException | IllegalBlockSizeException | BadPaddingException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.io.UnsupportedEncodingException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, UnsupportedEncodingException {
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException | InvalidKeyException | NoSuchPaddingException | IllegalBlockSizeException | BadPaddingException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
