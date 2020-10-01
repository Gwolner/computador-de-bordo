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
