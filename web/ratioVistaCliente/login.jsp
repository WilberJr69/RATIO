<%@page import="mvcMODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>loginCliente</title>
    
    <link rel="stylesheet" href="../css/login.css">
    
    <%
    
    if(request.getSession().getAttribute("correoCliente") != null){
        response.sendRedirect("./index.jsp");
    }
    
    
    %>
    

</head>
<body>
    
    
    <%@include file="header.jsp" %>
    

    
    <div class="tituloLogin">
        <h2>VAMOS A POR LOS MEJORES EVENTOS DE ESTE 2022</h2>
    </div>
    

    <main class="mainContenedorLogin">
        <div class="divContenedorLogin">

            <section class="imgLogin">
                <img src="../imgs/imgsLoginAndRegistro/imgLogin.png">
            </section>

            
            <section class="contenedorFomularioLogin">
                <h2>INICIAR SESION</h2>
                <form action="../LoginServlet" method="post">

                    <label for="">Correo Electrónico: </label>
                    <input type="email" name="correoCliente" id="" placeholder="Escribe tu correo aquí" required><br><br>
                    <label for="">Contraseña: </label>
                    <input type="password" name="passwordCliente" id="" placeholder="Escribe tu contraseña aquí" required><br><br>
                    
                    <input type="submit" name="submitButtonFormLogin" value="INGRESAR" class="buttonValidarLogin"><br><br>
                    
                    
                    
                </form>
                
                <a href="./recuperarContraseña.html" class="a_RecuperarContraseña">¿Olvidaste tu contraseña?</a>
                
            </section>

        </div>
    </main>
    
    
    <%@include file="footer.jsp" %>

</body>
</html>

