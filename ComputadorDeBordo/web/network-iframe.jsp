<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-iframe.css">
        <title>iGmax</title>
    </head>
    <body>       
        <div class="bkg">
            <label class="a-side"> Nome do servlet: </label>
            <br>
            <label class="b-side"><%= request.getContextPath()%></label>
            <br>
            
            <label class="a-side"> Nome da máquina local: </label>
            <br>
            <label class="b-side"><%= request.getLocalName()%></label>
            <br>
            
            <label class="a-side"> Endereço da máquina local: </label>
            <br>
            <label class="b-side"><%= request.getLocalAddr()%></label>
            <br>
            
            <label class="a-side"> Porta da máquina local: </label>
            <br>
            <label class="b-side"><%= request.getLocalPort()%></label>
            <br>
            
            <label class="a-side"> Endereço do servidor: </label>
            <br>
            <label class="b-side"><%= request.getRemoteHost()%></label>
            <br>
            
            <label class="a-side"> Porta do servidor: </label>
            <br>
            <label class="b-side"><%= request.getRemotePort()%></label>
            <br>
            
            <label class="a-side"> Método de requisição: </label>
            <br>
            <label class="b-side"><%= request.getMethod()%></label>
            <br>
            
            <label class="a-side"> Protocolo utilizado: </label>
            <br>
            <label class="b-side"><%= request.getProtocol()%></label>
        </div>
    </body>
</html>
