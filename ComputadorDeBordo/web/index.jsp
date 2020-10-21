<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        <title>iGmax</title>
    </head>
    <body>
        <div class="bkg">
            
            <h1 class="title">iGmax</h1>
            
            <form method="post" action="CoreServlet">
                <label>Total de combustível:</label>
                <input type="text" pattern="[0-9]{1,5}" title="Somente números" size="5" name="total" required placeholder=" Litros"><br>
                <br>
                
                <label>Preço do litro:</label>
                <input type="text" pattern="[0-9]*[.]?[0-9]+" title="Somente números" size="5" name="preco" required placeholder=" R$"><br>
                <br>
                
                <label>Consumo médio:</label>
                <input type="text" pattern="[0-9]{1,5}" title="Somente números" size="5" name="consumo" required placeholder=" Km/l"><br><br>
                
                <div class="div-left-btn">
                    <input class="btn left" type="reset" value="Limpar">
                    <input class="btn middle" type="submit" value="Calcular">
                </div>
            </form>
            <form method="get" action="network.jsp">
                <input class="btn rigth" type="submit" value="Testar rede">
            </form>
        </div>    
    </body>
</html>
