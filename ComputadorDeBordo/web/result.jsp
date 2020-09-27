<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>iGmax</title>
    </head>
    <body>
        <div class="board">
            <h1 class="title">Resultado</h1>
            <form method="get" action="index.html">
                <label>Distância máxima (Km):</label>
                <input type="text" size="10" value="<%= request.getAttribute("distancia")%>" disabled ><br>
                <label>Valor gasto para abastecer (R$):</label>
                <input type="text" size="10" value="<%= request.getAttribute("valor")%>" disabled ><br><br>
                <input class="btn" type="submit" value="Voltar" >
            </form>
        </div>
    </body>
</html>
