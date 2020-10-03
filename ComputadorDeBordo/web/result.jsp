<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>iGmax</title>
    </head>
    <body>
        <div class="bkg">      

            <h1 class="title">iGmax<span class="subtitle"> &nbsp&nbsp&nbsp&nbsp Resultado &nbsp </span></h1>                    

            <form method="get" action="index.jsp">

                <label>Distância máxima:</label><br>
                <label class="copy-input"><%= request.getAttribute("distancia")%> Km </label>
                <br>

                <label>Abastecimento:</label><br>
                <label class="copy-input">R$ <%= request.getAttribute("valor")%> </label>
                <br>

                <div class="div-middle-btn2">
                    <input class="btn middle btn-unique" type="submit" value="Voltar" >
                </div>
            </form>            
        </div>
    </body>
</html>
