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
            <h1 class="title">Painel principal</h1>
            <form method="post" action="ComputadorServlet">
                <label>Total de combustível (litros):</label>
                <input type="text" size="10" name="total" required><br>
                <label>Preço do litro (R$):</label>
                <input type="text" size="10" name="preco" required><br>
                <label>Consumo médio (Km/l):</label>
                <input type="text" size="10" name="consumo" required><br><br>
                <input class="btn left" type="submit" value="Calcular">
            </form>
            <form method="get" action="RedeServlet">
                <input class="btn rigth" type="submit" value="Testar rede">
            </form>
        </div>
    </body>
</html>
