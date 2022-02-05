<%-- 
    Document   : login
    Created on : Dec 24, 2021, 10:41:45 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card mt-5" >
                        <div class="card-header">Login</div>

                        <div class="card-body">
                            <form method="POST" action="loginController">


                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control " name="email"  required>

                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control" name="password" required>

                                    </div>
                                </div>


                                <div class="form-group row mb-0">
                                    <div class="col-md-8 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            Login
                                        </button>

                                    </div>
                                    <div class="col-md-8 offset-md-4">
                                        <a href="register.jsp" class="btn btn-success">
                                            New User?
                                        </a>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div><br>
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
            </form>
        </div>
    </body>
</html>
