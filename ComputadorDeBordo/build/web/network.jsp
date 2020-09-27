<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iGmax</title>
    </head>
    <body>
        <h1>Status da rede</h1>
        
        <label> Nome do servlet ....................: </label> <% request.getContextPath(); %>
        <label> Nome da máquina local ..............: </label> <% request.getLocalName(); %>
        <label> Endereço da máquina local ..........: </label> <% request.getLocalAddr(); %>
        <label> Porta da máquina local .............: </label> <% request.getLocalPort(); %>
        <label> Endereço do servidor ...............: </label> <% request.getRemoteHost(); %>
        <label> Porta do servidor ..................: </label> <% request.getRemotePort(); %>
        <label> Método de requisição ...............: </label> <% request.getMethod(); %>
        <label> Protocolo utilizado ................: </label> <% request.getProtocol(); %>
        
        <form>
            <input type="submit" value="Voltar" formmethod="get" formaction="index.jsp">
        </form>
    </body>
</html>
