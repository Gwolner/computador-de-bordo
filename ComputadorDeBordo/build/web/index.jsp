<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computador de bordo</title>
    </head>
    <body>
        <h1>Painel principal</h1>
        <form method="post" action="Computador">
            Total de combustível (litros):
            <input type="text" size="10" name="total" required><br>
            Preço do litro (R$):
            <input type="text" size="10" name="preco" required><br>
            Consumo médio (Km/l):
            <input type="text" size="10" name="consumo" required><br><br>
            <input type="submit" value="Calcular">
            <!--<input type="submit" value="Calcular" formmethod="post" formaction="Computador">-->
            <!--<input type="submit" value="Testar rede" formmethod="get" formaction="Rede">-->
        </form>
        <form method="get" action="Rede">
            <input type="submit" value="Testar rede">
        </form>
    </body>
</html>
