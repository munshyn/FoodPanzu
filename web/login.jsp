<%-- 
    Document   : login
    Created on : Dec 24, 2021, 10:41:45 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../assets/favicon.ico">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <!--<link href="../css/styles.css" rel="stylesheet" />-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <title>Login Page</title>

        <style>
            body{
                background-image: url('https://img.wallpapersafari.com/desktop/1920/1080/41/10/o9vHAP.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }
            .position-absolute{
                position: absolute;
                width: 1000px;
                height: 271px;
                left: 72px;
                top: 450px;
            }
            
            label{
                color:white;
            }
            
            .glass{
                background: rgba(0,0,0,0.8);
                 backdrop-filter: saturate(180%) blur(10px);
                 border-radius: 10%;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="position-absolute glass">
                <div class="text-center ">
                    <h1 class="display-5 fw-bolder text-white mb-3 mt-3">Login</h1>
                    <div class="gap-3 justify-content-sm-center">
                        <form method="POST" action="loginController">


                            <div class="form-group row">
                                <label class="col-md-4 col-form-label text-md-right mb-3" for="email">E-Mail Address</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control " name="email" required>

                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right mb-3">Password</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" required>

                                </div>
                            </div>


                            <div class="mb-0">
                                    <button type="submit" class="btn btn-primary">
                                        Login
                                    </button>
                                    <a href="register.jsp" class="btn btn-success">
                                        New User?
                                    </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>





    </body>
</html>