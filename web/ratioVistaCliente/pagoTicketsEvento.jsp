<%@page import="mvcCONTROLLER.CompraTicketsServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pago Tickets</title>
        <link rel="stylesheet" href="../css/pagoEvento.css">
        <link rel="stylesheet" href="../css/detallesEvento.css">
        
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        
        <div class="tituloDetalleCompra">
            <h2>Detalles de compra</h2>
        </div>
        
        <div class="divDetalleCompraTable">
            <table  class="tableFormCompraTickets" >
                <tr>
                    <th>Categoría Ticket</th>
                    <th>Costo x Unid.</th>
                    <th>Cantidad</th>
                    <th>Subtotal</th>
                </tr>
                    <%
                    String[] cantidadTicketsPorComprar; 
                    cantidadTicketsPorComprar = request.getParameterValues("cantidadTicketsAComprar");

                    String[] tipoTicket; 
                    tipoTicket = request.getParameterValues("tipoTicket");

                    String[] costoTicket; 
                    costoTicket = request.getParameterValues("costoTicket");

                    //request.setAttribute("elementos", elementos);
                    if(cantidadTicketsPorComprar!=null){
                        int i = 0;
                        int totalCostoCompraTickets = 0;
                        for(String cantidadTicketsPorComprarMapeo: cantidadTicketsPorComprar){
                            if (cantidadTicketsPorComprarMapeo.equals("0")){
                                i++;
                            }else{

                                out.println("<tr>");
                                out.println("<td>"+tipoTicket[i]+"</td>");
                                out.println("<td>"+costoTicket[i]+"</td>");
                                out.println("<td>"+cantidadTicketsPorComprarMapeo+"</td>");
                                float costoCategoriaxCantidadTickets = Float.valueOf(costoTicket[i]) * Float.valueOf(cantidadTicketsPorComprarMapeo);
                                out.println("<td>"+costoCategoriaxCantidadTickets+"</td>");
                                out.println("</tr>");
                                i++;
                                totalCostoCompraTickets += costoCategoriaxCantidadTickets;
                            }
                        }
                        
                    
                    %>
            </table>
                    <%
                        out.println("<div class=\"divCostoTotalCompra\">");
                        out.println("<p> COSTO TOTAL: "+totalCostoCompraTickets+"</p>");
                        out.println("</div>");
                        
                        
                    %>
        </div>

        
        
        
        
        
        <script src="https://www.paypal.com/sdk/js?client-id=Ade7rWblUjPwKGGH9vNO-woQ8rL8ayhg9r_mp6eTvTEO6Xjvbb9ICoSnhPBgwtY52ePzsWcevQJe2XAI&currency=USD"></script>
        <!-- Set up a container element for the button -->
        <div id="paypal-button-container"></div>
        <script>
          paypal.Buttons({
            // Sets up the transaction when a payment button is clicked
            createOrder: (data, actions) => {
              return actions.order.create({
                purchase_units: [{
                  amount: {
                    value: <%= totalCostoCompraTickets %> // Can also reference a variable or function
                  }
                }]
              });
            },
            // Finalize the transaction after payer approval
            onApprove: (data, actions) => {
              return actions.order.capture().then(function(orderData) {
                // Successful capture! For dev/demo purposes:
                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                const transaction = orderData.purchase_units[0].payments.captures[0];
                alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);
                // When ready to go live, remove the alert and show a success message within this page. For example:
                // const element = document.getElementById('paypal-button-container');
                // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                // Or go to another URL:  actions.redirect('thank_you.html');
              });
            }
          }).render('#paypal-button-container');
        </script>
                    <%  
                        }
                    %>
        

        <%@include file="footer.jsp" %>
    </body>
</html>
