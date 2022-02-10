<%-- 
    Document   : ViewUser
    Created on : Jan 6, 2022, 9:48:35 AM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Fonts-->
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

        <!--Styles-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
        <link href="css/style.css" rel="stylesheet" />
        <title>Edit Menu</title>
        <script>

            function updateSuccess() {
                alert("Menu successfully updated");
            }

        </script>
    
    </head>
    <body>

        <%
        if (request.getAttribute("updateMSuccess") == "true") {
    %>
    <script>
        updateSuccess();
    </script>
    <% }%>

        <jsp:include page="header.jsp" />
        <header class="header-home py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5 glass py-2">
                            <h1 class="display-5 fw-bolder text-white mb-2">Manager Dashboard</h1>
                            <p class="lead text-white-50">Edit Menu</p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <!--<div class="d-flex justify-content-center align-items-center mt-4">-->
                <form class="well form-horizontal" action="UpdateMenuController" method="get">
                    <fieldset>
                        <!-- Form Name -->
                        <legend>Update Info</legend>

                        <!-- Text input-->
                        <jsp:useBean id="m"class="Model.Menu" scope="request"></jsp:useBean>
                        <input type="hidden" name="menuCode" value="<jsp:getProperty name="m"property="menuCode"/>">

                        <div class="form-group">
                            <label class="col-md-4 control-label">Food name : </label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input  name="fdName" placeholder="Food Name" class="form-control"  type="text" value="<jsp:getProperty name="m"property="fdName"/>">
                                </div>
                            </div>
                        </div>

                        <!-- input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">Food Description : </label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input  name="fdDesc" placeholder="Food Description" class="form-control"  type="text" value="<jsp:getProperty name="m"property="fdDesc"/>">
                                </div>
                            </div>
                        </div>

                        <!-- input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">Food Image : </label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input  name="fdImage" placeholder="Food Image" class="form-control"  type="text" value="<jsp:getProperty name="m"property="fdImage"/>">
                                </div>
                            </div>
                        </div>

                        <!-- input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label">Price : </label>  
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                    <input name="price" placeholder="Price" class="form-control" type="text" value="<jsp:getProperty name="m"property="price"/>">
                                </div>
                            </div>
                        </div>

                        <!--input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label" >Category : </label> 
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input name="category" placeholder="Category" class="form-control"  type="text" value="<jsp:getProperty name="m"property="category"/>">
                                </div>
                            </div>
                        </div>

                        <!-- Button -->

                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-success" >Update</button>
                                <a class="btn btn-primary" href="GetAllMenuController">Go back</a>
                            </div>
                        </div>
                    </fieldset>
                </form>
            <!--</div>-->
        </div>
    </body>
</html>
