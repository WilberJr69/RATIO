<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles Evento</title>
    <link rel="stylesheet" href="../css/detallesEvento.css">
    <link rel="stylesheet" href="../css/pagoEvento.css">
    
    </head>
    <body>
        
        <%@include file="../ratioVistaCliente/header.jsp" %>
        
        <section class="sectionEvento">       
            <div class="divSectionEvento">
                
                
                
                <div class="divTituloEvento-Fecha">
                    <h1>RAPTURE FESTIVAL</h1>
                    <p>14 de Enero del 2023 - 18:00</p>
                </div>

                <div class="divDetallesTicketsEvento-ficha">

                    <div>
                        <img src="../imgs/fichasEventosIndex/fichaRaptureFestivalBlackCoffe.jpg" alt="alt"/>
                    </div>

                    <div class="divFormCompraTickets">
                        <form action="../ratioVistaCliente/pagoTicketsEvento.jsp" method="post" class="formCompraTickets">
                            <table class="tableFormCompraTickets">
                                <tr>
                                    <th>Categoría Ticket</th>
                                    <th>Costo x Unid. (S/.)</th>
                                    <th>Cantidad</th>
                                </tr> 
                                <tr>
                                    <td><input type="text" name="tipoTicket" value="GENERAL" class="inputTipoTicket">   </td>
                                    <td><input type="number" name="costoTicket" value="20.00" class="inputCostoTicket">   </td>
                                    <td><input type="number" name="cantidadTicketsAComprar" min="0" max="6" value="0"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="tipoTicket" value="VIP" class="inputTipoTicket">   </td>
                                    <td><input type="number" name="costoTicket" value="50.00" class="inputCostoTicket">   </td>
                                    <td><input type="number" name="cantidadTicketsAComprar" min="0" max="6" value="0"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="tipoTicket" value="VIP GOLD" class="inputTipoTicket">   </td>
                                    <td><input type="number" name="costoTicket" value="120.00" class="inputCostoTicket">   </td>
                                    <td><input type="number" name="cantidadTicketsAComprar" min="0" max="6" value="0"></td>
                                </tr>
                            </table>
                            <div class="divButtonComprarTickets">
                                <%
                                if(request.getSession().getAttribute("correoCliente") == null){
                                %>
                                <p style="color:red;">* Debe Iniciar Sesion para poder realiza cualquier compra *</p>
                                <%
                                    }else{
                                    %>
                                    <input type="submit" name="submitButtonComprarTickets" value="COMPRAR TICKETS" class="buttonComprarTickets">
                                    <%
                                    }
                                %>
                                
                            </div>
                        </form>
                    </div>

                </div>
                
                <div class="divDetallesEvento">
                    <div>
                        <p>Responsable: Black Coffe</p>
                        <h3>Dirección Evento</h3>
                        <p>Km. 29.5 Panamericana Sur, Lurín - Lima </p>
                        <h3>Ubicación Google Maps</h3>
                        <p><a href="https://goo.gl/maps/byj5BXmVW4KSy97RA" >https://goo.gl/maps/byj5BXmVW4KSy97RA</a></p>
                    </div>
                    <div class="divDetallesExtrasEvento">
                        <h3>Detalles Extras Del Evento</h3>
                        <p>
                            X--X--X--X--X--X--X--X--X--X--X--X--X--X <br>
                            X--X--X--X--X--X--X--X--X--X--X--X--X--X <br>
                            X--X--X--X--X--X--X--X--X--X--X--X--X--X <br>
                        </p>
                    </div>
                </div>
                
                
                
            </div>
        </section>
        
        
        <%@include file="../ratioVistaCliente/footer.jsp" %>
        
    </body>
</html>
