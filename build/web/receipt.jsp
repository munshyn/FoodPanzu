<%-- 
    Document   : doneReserve
    Created on : Feb 8, 2022, 11:14:06 PM
    Author     : User
--%>

<%@page import="Model.Order"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receipt</title>
        <link rel="stylesheet" href="css/style-receipt.css">

    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5 mb-5">
            <div class="row d-flex justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="text-left logo p-2 px-5"> <img src="css/panzu.png" width="50"> </div>
                        <div class="invoice p-5">
                            <h5>Your Reservation Confirmed!</h5> <span class="font-weight-bold d-block mt-4">Hello, ${r.getUserName()}</span> <span>You order has been confirmed!</span>
                            <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="py-2"> <span class="d-block text-muted">Booking Id</span> <span>${r.getBookingId()}</span> </div>
                                            </td>
                                            <td>
                                                <div class="py-2"> <span class="d-block text-muted">Reserve Table</span> <span>${r.getReserveTable()}</span> </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="product border-bottom table-responsive">
                                <table class="table table-borderless">
                                    <tbody>
                                        <%
                                            List<Order> o = (List<Order>) request.getAttribute("o");
                                            for (int i = 0; i < o.size(); i++) {
                                        %>
                                        <tr>
                                            <td width="20%"> <img src="<%=o.get(i).getMenu().getFdImage()%>" width="90" height="90"> </td>
                                            <td width="60%"> <span class="font-weight-bold"><%=o.get(i).getMenu().getFdName()%></span>
                                                <div class="product-qty"> <span class="d-block">Quantity:1</span> </div>
                                            </td>
                                            <td width="20%">
                                                <div class="text-right"> <span class="font-weight-bold">RM<%=o.get(i).getMenu().getPrice()%></span> </div>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row d-flex justify-content-end">
                                <div class="col-md-5">
                                    <table class="table table-borderless">
                                        <tbody class="totals">
                                            
                                            <tr class="border-top border-bottom">
                                                <td>
                                                    <div class="text-left"> <span class="font-weight-bold">Subtotal</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span class="font-weight-bold">${r.getPrice()}</span> </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <p class="font-weight-bold mb-0">Thanks for choosing us!</p> <span>Mipanzu Team</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
