<%-- 
    Document   : header
    Created on : Dec 24, 2021, 10:52:43 PM
    Author     : User
--%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>JSP Page</title>-->
        <!--Fonts-->
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

        <!--Styles-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">


        <!--Script-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="homeController">
                    FoodPanzu
                </a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="homeController">
                                Menu <span class="caret"></span>
                            </a>
                        </li>
                        
                        <%
                            User u = (User)session.getAttribute("u");
                            if(!u.isIsAdmin()){
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="goToCartController">
                                Cart(${sessionScope.o.size()})
                                <span class="caret"></span>
                            </a>
                        </li>
                        <% } %>

                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp">
                                ${sessionScope.u.getName()}
                                <span class="caret"></span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="logoutController">
                                Logout
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
