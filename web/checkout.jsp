<%-- 
    Document   : checkout
    Created on : Feb 5, 2022, 10:27:07 PM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container px-5">

            <div class="py-5 text-center">
                <h2>Checkout form</h2>
            </div>
            <div class="row g-5">
                <div class="col-md-5 col-lg-4 order-md-last">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-primary">Your cart</span>
                        <span class="badge bg-primary rounded-pill">${qty}</span>
                    </h4>
                    <ul class="list-group mb-3">
                        <%
                            List<Order> o = (List<Order>) session.getAttribute("o");
                            for (Order or : o) {
                        %>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0"><%=or.getMenu().getFdName()%></h6>
                                <small class="text-muted"><%=or.getMenu().getFdDesc()%></small>
                            </div>
                            <span class="text-muted">RM<%=or.getMenu().getPrice()%></span>
                        </li>
                        <% }%>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total (RM)</span>
                            <strong>${totPrice}</strong>
                        </li>
                    </ul>
                </div>
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">Customer Information</h4>
                    <form class="needs-validation" novalidate action="reserveController" method="POST">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" placeholder="" value="${sessionScope.u.getName()}" name="name" required>
                                <div class="invalid-feedback">
                                    Valid name is required.
                                </div>
                            </div>
                                
                            <div class="col-sm-6">
                                <label for="bookingId" class="form-label">Booking Id</label>
                                <input type="text" class="form-control" id="bookingId" placeholder="i.e (a123)" name="bookingId" required>
                                <div class="invalid-feedback">
                                    Valid booking id is required.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" value="${sessionScope.u.getEmail()}">
                                <div class="invalid-feedback">
                                    Please enter a valid email address.
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <h4 class="mb-3">Reservation</h4>

                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="reserveTable" class="form-label">Table Number</label>
                                <input type="text" class="form-control" id="reserveTable" name="reserveTable" placeholder="Choose 1 to 7" required>
                                <div class="invalid-feedback">
                                    Table Number
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="mr-sm-2" for="inlineFormCustomSelect">How many of you are coming?</label>
                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="person">
                                    <option selected>Choose...</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                    <option value="4">Four</option>
                                    <option value="5">Five</option>
                                </select>
                            </div>
                        </div>

                        <hr class="my-4">

                        <button class="w-100 btn btn-danger btn-lg" type="submit">Continue to reserve</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
