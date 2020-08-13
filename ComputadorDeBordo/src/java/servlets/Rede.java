package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Rede", urlPatterns = {"/Rede"})
public class Rede extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SegundoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Status da rede</h1>");
            out.println("Nome do servlet ....................: "+request.getContextPath()+"<br>");
            out.println("Nome da máquina local ..............: "+request.getLocalName()+"<br>");
            out.println("Endereço da máquina local ..........: "+request.getLocalAddr()+"<br>");
            out.println("Porta da máquina local .............: "+request.getLocalPort()+"<br>");
            out.println("Endereço do servidor ...............: "+request.getRemoteHost()+"<br>");
            out.println("Porta do servidor ..................: "+request.getRemotePort()+"<br>");
            out.println("Método de requisição ...............: "+request.getMethod()+"<br>");
            out.println("Protocolo utilizado ................: "+request.getProtocol()+"<br><br>");
            out.println("<form>");            
            out.println("<input type=\"submit\" value=\"Voltar\" formmethod=\"get\" formaction=\"index.html\">");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        } 
    }

}
