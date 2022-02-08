<%-- 
    Document   : totalsales
    Created on : Feb 8, 2022, 11:04:41 PM
    Author     : khair
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style-total-sales.css" rel="stylesheet" />
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" />
        <title>Total Sales</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <header class="header-home py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5 glass py-2">
                            <h1 class="display-5 fw-bolder text-white mb-2">Total Sales</h1>
                            <!--<p class="lead text-white-50">Edit Menu</p>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container-fluid ">
            <div class="row">
                <aside class="col-lg-9">
                    <div class="card">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover table-shopping-cart">
                                <thead class="text-muted">
                                    <tr class="small text-uppercase">
                                        <th scope="col" width="120">Booking Id</th>
                                        <th scope="col" width="120">Name</th>
                                        <th scope="col" width="120">Table No.</th>
                                        <th scope="col" width="120">Person</th>
                                        <th scope="col" width="120">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Reservation> rl = (List<Reservation>) request.getAttribute("rl");
                                        for (Reservation r : rl) {
                                    %>
                                    <tr>
                                    <td><%=r.getBookingId()%></td>
                                    <td><%=r.getUserName()%></td>
                                    <td><%=r.getReserveTable()%></td>
                                    <td><%=r.getPerson()%></td>
                                    <td><%=r.getPrice()%></td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </aside>
                <aside class="col-lg-3">
                    <div class="card">
                        <div class="card-body">
                            <dl class="dlist-align">
                                <dt>Total Sales:</dt>
                                <dd class="text-right ml-3">RM${totSales}</dd>
                            </dl>
                            <hr>
                            <dl class="dlist-align">
                                <dt>Total Reservation:</dt>
                                <dd class="text-right text-dark b ml-3"><strong>${rl.size()}</strong></dd>
                            </dl>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </body>
</html>
