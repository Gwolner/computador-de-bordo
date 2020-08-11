<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computador de bordo</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <form method="get" action="index.html">
            Distância máxima (Km):
            <input type="text" size="10" value="<%= request.getAttribute("distancia") %>" disabled ><br>
            Valor gasto para abastecer (R$):
            <input type="text" size="10" value="<%= request.getAttribute("valor") %>" disabled ><br>
            <input type="submit" value="Voltar" >
        </form>
    </body>
</html>
