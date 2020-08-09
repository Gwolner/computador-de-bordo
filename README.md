# Computador de bordo

> Computador de bordo com interface HTML realizando requisição para um Servlet que a trata e redireciona para uma interface JSP de saída. Este projeto visa compreender, na prática, os fundamentos de Java Web.

### Interface HTML

Nada tão diferente de uma página HTML convencional. Apenas atentar para o detalhe do action do form, pois este aponta para o **nome do servlet sem a extensão**.
Caso deseje-se redirecionar o form para uma página JSP, por exemplo, é preciso incluir o nome do arquivo e sua extensão (exemplo: nome.jsp)

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Computador de bordo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="post" action="Computador">
            Total de combustível (litros):
            <input type="text" size="10" name="total"><br>
            Preço do litro (R$):
            <input type="text" size="10" name="preco"><br>
            Consumo médio (Km/l):
            <input type="text" size="10" name="consumo"><br>
            <input type="submit" value="Calcular">
        </form>
    </body>
</html>
```

```java
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Computador", urlPatterns = {"/Computador"})
public class Computador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Obtendo os dados
        float total = Float.parseFloat(request.getParameter("total"));
        float preco = Float.parseFloat(request.getParameter("preco"));
        float consumo = Float.parseFloat(request.getParameter("consumo"));
        
        //Tratando os dados
        float valor = total / preco;
        float distancia = total * consumo;
       
        //Atribuindo os dados tratado na requisição
        request.setAttribute("valor", valor);
        request.setAttribute("distancia", distancia);
        
        //Redirecionando a requisição para outra página
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

}

```
