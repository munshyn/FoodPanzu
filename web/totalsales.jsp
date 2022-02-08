<%-- 
    Document   : totalsales
    Created on : Feb 8, 2022, 11:04:41 PM
    Author     : khair
--%>

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
                            <table class="table table-borderless table-shopping-cart">
                                <thead class="text-muted">
                                    <tr class="small text-uppercase">
                                        <th scope="col">Order</th>
                                        <th scope="col" width="120">Quantity</th>
                                        <th scope="col" width="120">Price</th>
                                        <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr></tr>
                                    <tr></tr>
                                    <tr></tr>
                                    <tr></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </aside>
                <aside class="col-lg-3">
<!--                    <div class="card mb-3">
                        <div class="card-body">
                            <form>
                                <div class="form-group"> <label>Have coupon?</label>
                                    <div class="input-group"> <input type="text" class="form-control coupon" name="" placeholder="Coupon code"> <span class="input-group-append"> <button class="btn btn-primary btn-apply coupon">Apply</button> </span> </div>
                                </div>
                            </form>
                        </div>
                    </div>-->
                    <div class="card">
                        <div class="card-body">
                            <dl class="dlist-align">
                                <dt>Total price:</dt>
                                <dd class="text-right ml-3">$69.97</dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>Discount:</dt>
                                <dd class="text-right text-danger ml-3">- $10.00</dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>Total:</dt>
                                <dd class="text-right text-dark b ml-3"><strong>$59.97</strong></dd>
                            </dl>
                            <hr> <a href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"> Make Purchase </a> <a href="#" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </body>
</html>
