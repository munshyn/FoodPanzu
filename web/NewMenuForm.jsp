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
        <title>JSP Page</title>
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

        <!--Styles-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
    </head>
    <body>
        <form action="InsertMenuController" method="get">
            Food Name: <input type="text" name="fdName" required><br><br>
            Food Description: <input type="text" name="fdDesc" required><br><br>
            Food Image: <input type="text" name="fdImage" required><br><br>
            Price: <input type="text" name="price" required><br><br>
            Category: <select name="category">
                <option value="Food">Food</option>
                <option value="Drink">Drink</option>
                <option value="Set">Set</option>
            </select>
            <br><br>

            <button type="submit" class="btn btn-primary">
                Add menu
            </button>

            <a href="homeController" class="btn btn-secondary">
                Go back
            </a>

        </form>
    </body>
</html>
