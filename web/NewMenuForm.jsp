<%-- 
    Document   : NewMenuForm
    Created on : Feb 6, 2022, 9:59:20 PM
    Author     : syafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Menu</title>
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

        <!--Styles-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
        <link href="css/style.css" rel="stylesheet" />
        <style>

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <header class="header-home py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5 glass py-2">
                            <h1 class="display-5 fw-bolder text-white mb-2">Manager Dashboard</h1>
                            <p class="lead text-white-50">Add New Menu</p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="d-flex justify-content-center align-items-center mt-4">
            <form action="InsertMenuController" method="get">
                <table class="mb-2">
                    <tr >
                        <td >
                            Food Name:
                        </td>
                        <td >
                            <input type="text" name="fdName" required class="mb-3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Food Description:
                        </td>
                        <td>
                            <input type="text" name="fdDesc" required class="mb-3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Food Image:
                        </td>
                        <td>
                            <input type="text" name="fdImage" required class="mb-3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price:
                        </td>
                        <td>
                            <input type="text" name="price" required class="mb-3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Category:
                        </td>
                        <td>
                            <select name="category"  >
                                <option value="Food">Food</option>
                                <option value="Drink">Drink</option>
                                <option value="Dessert">Dessert</option>
                            </select>
                        </td>
                    </tr>

                </table>



                <button type="submit" class="btn btn-primary">
                    Add menu
                </button>

                <a href="homeController" class="btn btn-secondary">
                    Go back
                </a>

            </form>
        </div>
    </body>
</html>
