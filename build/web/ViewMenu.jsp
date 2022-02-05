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
        <title>Menu</title>
    </head>
    <body>
        <div class="container">
            
        <form class="well form-horizontal" action="UpdateMenuController" method="get">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Update Info</legend>
                    
                    <!-- Text input-->
                    <input type="hidden" name="id" value="${m.getMenuCode()}">
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label">Food name : </label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input  name="fdName" placeholder="Food Name" class="form-control"  type="text" value="${m.getFdName()}">
                            </div>
                        </div>
                    </div>

                    <!-- input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Price : </label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input name="price" placeholder="Price" class="form-control" type="number" value="${m.getPrice()}">
                            </div>
                        </div>
                    </div>
                    
                    <!--input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Category : </label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"></span>
                                <input name="category" placeholder="Category" class="form-control"  type="text" value="${m.getCategory()}">
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
                    
        
        </div>
    </body>
</html>
