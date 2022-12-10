<%@page import="mvcMODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RATIO</title>
    <link rel="stylesheet" href="../css/index.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <%@include file="header.jsp" %>
    
    <!--Bosstrap Carrusel-->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
            <a href=""><img src="../imgs/imgsIndex/slide-5717-6493.jpg" class="d-block w-100" alt="..."></a>
        </div>
        <div class="carousel-item">
            <a href=""><img src="../imgs/imgsIndex/fichaBlackCoffe.jpg" class="d-block w-100" alt="..."></a>
        </div>
        <div class="carousel-item">
            <img src="../imgs/imgsIndex/fichaPublicidadOrganizador(a).png" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    


    
    <% 
    
    HttpSession sesion = request.getSession();
    
    
    %>
    

    
    <section class="sectionRediraccionEventos">
        <div class="filaEventos">
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="../vistaEventos/raptureFestival-BlackCoffe.jsp" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
        </div><br>
        <div class="filaEventos">
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
            <div class="eventoDiv">
                
                <img style="width: 270px" src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                <h3>RAPTURE FESTIVAL</h3>
                <hr>
                <p>
                    Organizador: Black Coffe    <br>
                    14 de Enero 2023 - 18:00    <br>
                    Green Arena                 <br>
                </p>
                <a href="" class="aRedirigirCompraTicketsEvento">COMPRAR TICKETS</a>
                
            </div>
        </div><br>
    


        
    </section>
    
    <!--comment 
    <div>
        asdddd<br><br><br><br><br><br>
        <p>IdSesion: <%= sesion.getId()%></p>
        <p>${correoCliente}</p>
        <br><br><br><br><br><br>
    </div>
    -->
    
    
    <%@include file="footer.jsp" %>

    
    
    <!--Script Boostrap 5.0 JS - Uso: Carousel*/-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
    crossorigin="anonymous"></script>
    
</body>
</html>
