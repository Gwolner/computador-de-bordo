<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <input class="btn" type="submit" value="Calcular">
                <!--<input type="submit" value="Calcular" formmethod="post" formaction="Computador">-->
                <!--<input type="submit" value="Testar rede" formmethod="get" formaction="Rede">-->
            </form>
            <form method="get" action="Rede">
                <input class="btn" type="submit" value="Testar rede">
            </form>
        </div>
    </body>
</html>
