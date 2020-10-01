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
            <h1 class="title">Status da rede</h1>

            <div class="net">
                <iframe src="iframe-result.jsp">
                    
                </iframe>
            </div>

            <form>
                <input class="btn" type="submit" value="Voltar" formmethod="get" formaction="index.jsp">
            </form>
        </div>
    </body>
</html>
