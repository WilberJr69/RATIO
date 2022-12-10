<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrate</title>
    <link rel="stylesheet" href="../css/registroCliente.css">
    
    <%
    
    if(request.getSession().getAttribute("correoCliente") != null){
        response.sendRedirect("./index.jsp");
    }
    
    
    %>
    
</head>
<body>
    
    <%@include file="header.jsp" %>
    
    <div class="tituloRegistroCliente">
        <h2>VAMOS A POR LOS MEJORES EVENTOS DE ESTE 2022</h2>
    </div>

    <main class="mainContenedorRegistroCliente">
        <div class="divContenedorRegistroCliente">

            <section class="imgRegistroCliente">
                <img src="../imgs/imgsLoginAndRegistro/imgRegistroCliente.png">
            </section>
            
            <section class="contenedorFomularioRegistroCliente">
                <h2>REGISTRARME</h2>
                
                <form action="../RegisterServlet" method="post">

                    <label for="">Correo Electrónico: </label>
                    <input type="email" id="" placeholder="Escribe tu correo aquí" required name="correoCliente"><br><br>
                    <label for="">Nombre Completo: </label>
                    <input type="text" placeholder="Escribe tu nombre completo aquí" required name="nombreCompletoCliente"><br><br>
                    <label for="">Número de Celular: </label>
                    <input type="text" placeholder="Escribe tu numero de celular aquí" required name="numeroCelularCliente"><br><br>
                    <label for="">Contraseña: </label>
                    <input type="password" id="" placeholder="Escribe tu contraseña aquí" required name="passwordCliente"><br><br>
                    
                    <input type="submit" value="REGISTRARME" class="buttonValidarRegistroCliente"><br><br>

                </form>
                
                <a href="./login.html" class="a_RecuperarContraseña">¿Ya tienes una cuenta?</a>
                
            </section>

        </div>
    </main>

    <%@include file="footer.jsp" %>

</body>
</html>