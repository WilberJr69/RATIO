<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="../css/header.css">
</head>

<header>
    <nav>
        <div class="contendorLogoRatio">
            <a href="http://localhost:8080/RATIO/ratioVistaCliente/index.jsp" style="height: 37px"><img src="../imgs/imgsHeaderAndFooter/logo_RATIO.png" alt=""></a>
            <a href="http://localhost:8080/RATIO/ratioVistaCliente/index.jsp"><h2>RATIO</h2></a>
        </div>

        <div class="contenedorOpciones">

            <%
            
            if(request.getSession().getAttribute("correoCliente") == null){

            %>
            <a href="http://localhost:8080/RATIO/ratioVistaCliente/login.jsp">Iniciar Sesion</a>
            <a href="http://localhost:8080/RATIO/ratioVistaCliente/register.jsp" class="btnRegistrCliente">Registrarme</a>
            <%
                }else{
        %>
            <a href="" class="btnRegistrCliente">${correoCliente}</a>
            <a href="" class="btnMisTickets">Mis Tickets</a>
            <a href="../CerrarSesionServlet" class="btnCerrarSesion">Cerrar Sesion</a>
        <%
                }

            %>
            


        </div>
    </nav>
</header>
