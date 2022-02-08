<%-- 
    Document   : home
    Created on : Feb 3, 2022, 3:16:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Menu"%>
<%@page import="java.util.List"%>
<%@page import="Model.User"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Home Page</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </head>

    <body> 
        <jsp:include page="header.jsp" />
        <header class="header-home py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5 glass">
                            <h1 class="display-5 fw-bolder text-white mb-2">MENU</h1>
                            <!--<p class="lead text-white-50 mb-4">Now you can just order your favourite food just by using our website. So, what are you waiting for? Start Ordering Now!!!</p>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section class="main-content">
            <div class="container">

                <!--                <h1 class="text-center text-uppercase">Food Order Card</h1>
                                <br>
                                <br>-->

                <ul class="nav nav-tabs justify-content-center mb-4">
                    <li class="active"><a class="btn btn-primary btn-lg mr-2" href="#panel1" data-toggle="tab">Food</a></li>
                    <li><a class="btn btn-primary btn-lg mr-2" href="#panel2" data-toggle="tab">Drink</a></li>
                    <li><a class="btn btn-primary btn-lg mr-2" href="#panel3" data-toggle="tab">Dessert</a></li>
                </ul>

                <div class="tab-content">
                    <div id="panel1" class="tab-pane show active">
                        <!--For FOOD-->
                        <div class="row">
                            <%
                                List<Menu> ul = (List<Menu>) request.getAttribute("ml");
                                for (int i = 0; i < ul.size(); i++) {
                                    if (ul.get(i).getCategory().equalsIgnoreCase("Food")) {
                            %>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <div class="food-card food-card--vertical">
                                    <div class="food-card_img">
                                        <img src="<%=ul.get(i).getFdImage()%>" alt="">
                                        <a href="#!"><i class="fa fa-heart"></i></a>
                                    </div>

                                    <div class="food-card_content">
                                        <div class="food-card_title-section">
                                            <a href="#!" class="food-card_title"><%=ul.get(i).getFdName()%></a>
                                            <a href="#!" class="food-card_author"><%=ul.get(i).getCategory()%></a>
                                        </div>
                                        <div class="food-card_bottom-section">
                                            <div class="space-between">
                                                <div>
                                                    <span class="fa fa-fire"></span><%=ul.get(i).getFdDesc()%>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="space-between">
                                                <div class="food-card_price">
                                                    <span>RM <%=ul.get(i).getPrice()%></span>
                                                </div>
                                                <div class="food-card_order-count">
                                                    <div class="input-group mb-3">
                                                        <a href="addToCartController?foodCode=<%=ul.get(i).getMenuCode()%>" class="btn btn-primary">
                                                            Add to Cart
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}
                            }%>
                        </div>
                    </div>

                    <div id="panel2" class="tab-pane">
                        <!--For FOOD-->
                        <div class="row">
                            <%
                                for (int i = 0; i < ul.size(); i++) {
                                    if (ul.get(i).getCategory().equalsIgnoreCase("Drink")) {
                            %>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <div class="food-card food-card--vertical">
                                    <div class="food-card_img">
                                        <img src="<%=ul.get(i).getFdImage()%>" alt="">
                                        <a href="#!"><i class="fa fa-heart"></i></a>
                                    </div>

                                    <div class="food-card_content">
                                        <div class="food-card_title-section">
                                            <a href="#!" class="food-card_title"><%=ul.get(i).getFdName()%></a>
                                            <a href="#!" class="food-card_author"><%=ul.get(i).getCategory()%></a>
                                        </div>
                                        <div class="food-card_bottom-section">
                                            <div class="space-between">
                                                <div>
                                                    <span class="fa fa-fire"></span><%=ul.get(i).getFdDesc()%>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="space-between">
                                                <div class="food-card_price">
                                                    <span>RM <%=ul.get(i).getPrice()%></span>
                                                </div>
                                                <div class="food-card_order-count">
                                                    <div class="input-group mb-3">
                                                        <a href="addToCartController?foodCode=<%=ul.get(i).getMenuCode()%>" class="btn btn-primary">
                                                            Add to Cart
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% }
                            } %>
                        </div>
                    </div>

                    <div id="panel3" class="tab-pane">
                        <!--For FOOD-->
                        <div class="row">
                            <%
                                for (int i = 0; i < ul.size(); i++) {
                                    if (ul.get(i).getCategory().equalsIgnoreCase("Dessert")) {
                            %>
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <div class="food-card food-card--vertical">
                                    <div class="food-card_img">
                                        <img src="<%=ul.get(i).getFdImage()%>" alt="">
                                        <a href="#!"><i class="fa fa-heart"></i></a>
                                    </div>

                                    <div class="food-card_content">
                                        <div class="food-card_title-section">
                                            <a href="#!" class="food-card_title"><%=ul.get(i).getFdName()%></a>
                                            <a href="#!" class="food-card_author"><%=ul.get(i).getCategory()%></a>
                                        </div>
                                        <div class="food-card_bottom-section">
                                            <div class="space-between">
                                                <div>
                                                    <span class="fa fa-fire"></span><%=ul.get(i).getFdDesc()%>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="space-between">
                                                <div class="food-card_price">
                                                    <span>RM <%=ul.get(i).getPrice()%></span>
                                                </div>
                                                <div class="food-card_order-count">
                                                    <div class="input-group mb-3">
                                                        <a href="addToCartController?foodCode=<%=ul.get(i).getMenuCode()%>" class="btn btn-primary">
                                                            Add to Cart
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}
                            }%>
                        </div>
                    </div>
                </div>
            </div>
        </section>	
    </body>
</html>
