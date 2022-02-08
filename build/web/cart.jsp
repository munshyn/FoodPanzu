<%-- 
    Document   : cart
    Created on : Feb 6, 2022, 9:57:28 PM
    Author     : User
--%>

<%@page import="Model.Order"%>
<%@page import="java.lang.Math"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

    </head>
    <body>
        <section class="pt-5 pb-5">
            <div class="container">
                <div class="row w-100">
                    <div class="col-lg-12 col-md-12 col-12">
                        <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
                        <p class="mb-5 text-center">
                            <i class="text-info font-weight-bold">${qty}</i> items in your cart</p>
                        <table id="shoppingCart" class="table table-condensed table-responsive">
                            <thead>
                                <tr>
                                    <th style="width:60%">Product</th>
                                    <th style="width:12%">Price</th>
                                    <th style="width:16%"></th>
                                </tr>
                            </thead>
                            <%
                                List<Order> o = (List<Order>) session.getAttribute("o");
                                if (o.size() != 0) {
                                    for (int i = 0; i < o.size(); i++) {
                            %>
                            <tbody>
                                <tr>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-md-3 text-left">
                                                <img src="<%=o.get(i).getMenu().getFdImage()%>" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                                            </div>
                                            <div class="col-md-9 text-left mt-sm-2">
                                                <h4><%=o.get(i).getMenu().getFdName()%></h4>
                                                <p class="font-weight-light"><%=o.get(i).getMenu().getFdDesc()%></p>
                                            </div>
                                        </div>
                                    </td>
                                    <td data-th="Price">RM<%=o.get(i).getMenu().getPrice()%></td>
                                    <td class="actions" data-th="">
                                        <div class="text-right">
                                            <a href="deleteItemController?foodCode=<%=o.get(i).getMenu().getMenuCode()%>" class="btn btn-white border-secondary bg-white btn-md mb-2">
                                                <i class="fas fa-trash"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                            <%
                                }
                            } else {
                            %>
                            <tbody>
                                <tr>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-md-9 text-left mt-sm-2">
                                                <h4>No items</h4>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                            <% }%>
                        </table>
                        <div class="float-right text-right">
                            <h4>Subtotal:</h4>
                            <h1>RM${totPrice}</h1>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 d-flex align-items-center">
                    <div class="col-sm-6 order-md-2 text-right">
                        <a href="checkoutController" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
                    </div>
                    <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
                        <a href="homeController">
                            <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
