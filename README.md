# iGmax - Computador de bordo

> Interface JSP de um Computador de bordo que realiza requisição para um Servlet, onde o mesmo invoca uma classe Java para realizar cálculos matemático, cujos resultados são anexados a requisição realizada e redirecionada para exibição em uma outra interface JSP.

### index.jsp

Nada tão diferente de uma página HTML convencional. Apenas atentar para o detalhe do action do form, pois este aponta para o **nome do servlet sem a extensão**.
Caso deseje-se redirecionar o form para uma página JSP, por exemplo, é preciso incluir o nome do arquivo e sua extensão (exemplo: nome.jsp)

```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        <title>iGmax</title>
    </head>
    <body>
        <div class="board">
            <h1 class="title">iGmax</h1>
            <form method="post" action="CoreServlet">
                <label>Total de combustível:</label>
                <input type="text" pattern="[0-9]" title="Somente números" size="5" name="total" required placeholder=" Litros"><br>
                <label>Preço do litro:</label>
                <input type="text" pattern="[0-9]" title="Somente números" size="5" name="preco" required placeholder=" R$"><br>
                <label>Consumo médio:</label>
                <input type="text" pattern="[0-9]" title="Somente números" size="5" name="consumo" required placeholder=" Km/l"><br><br>
                <input class="btn left" type="submit" value="Calcular">
            </form>
            <form method="get" action="network.jsp">
                <input class="btn rigth" type="submit" value="Testar rede">
            </form>
        </div>
    </body>
</html>

```

### Servlet

```java
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
```

### result.jsp

```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>iGmax</title>
    </head>
    <body>
        <div class="board">
            <h1 class="title">Resultado</h1>
            <form method="get" action="index.jsp">
                <label>Distância máxima (Km):</label>
                <label> <%= request.getAttribute("distancia")%> </label><br>
                <label>Valor gasto para abastecer (R$):</label>
                <label> <%= request.getAttribute("valor")%> </label><br>
                <input class="btn" type="submit" value="Voltar" >
            </form>
        </div>
    </body>
</html>
```
### iframe-result.jsp

```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>iGmax</title>
    </head>
    <body>       
            <div class="net">
                <label> Nome do servlet ...........: </label> <%= request.getContextPath()%> <br>
                <label> Nome da máquina local .....: </label> <%= request.getLocalName()%> <br>
                <label> Endereço da máquina local .: </label> <%= request.getLocalAddr()%> <br>
                <label> Porta da máquina local ....: </label> <%= request.getLocalPort()%> <br>
                <label> Endereço do servidor ......: </label> <%= request.getRemoteHost()%> <br>
                <label> Porta do servidor .........: </label> <%= request.getRemotePort()%> <br>
                <label> Método de requisição ......: </label> <%= request.getMethod()%> <br>
                <label> Protocolo utilizado .......: </label> <%= request.getProtocol()%> <br>
            </div>
    </body>
</html>
```



