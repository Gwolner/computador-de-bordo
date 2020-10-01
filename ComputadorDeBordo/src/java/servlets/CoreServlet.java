package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Operation;


@WebServlet(name = "CoreServlet", urlPatterns = {"/CoreServlet"})
public class CoreServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Obtendo os dados
        float total = Float.parseFloat(request.getParameter("total"));
        float preco = Float.parseFloat(request.getParameter("preco"));
        float consumo = Float.parseFloat(request.getParameter("consumo"));
        
        //Tratando os dados (chamando classe Operation)
        
        float valor = new Operation().calcularValor(total, preco);
        float distancia = new Operation().calcularDistancia(total, consumo);
       
        //Atribuindo os dados tratado na requisição
        request.setAttribute("valor", valor);
        request.setAttribute("distancia", distancia);
        
        //Dispachando a requisição para outra página
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

}
