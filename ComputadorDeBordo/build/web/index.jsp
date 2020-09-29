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
            <form method="post" action="ComputadorServlet">
                <label>Total de combustível:</label>
                <input type="number" size="10" name="total" required placeholder=" Litros"><br>
                <label>Preço do litro:</label>
                <input type="number" size="10" name="preco" required placeholder=" R$"><br>
                <label>Consumo médio:</label>
                <input type="number" size="10" name="consumo" required placeholder=" Km/l"><br><br>
                <input class="btn left" type="submit" value="Calcular">
            </form>
            <form method="get" action="network.jsp">
                <input class="btn rigth" type="submit" value="Testar rede">
            </form>
        </div>
    </body>
</html>
