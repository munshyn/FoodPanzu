<%-- 
    Document   : managerDashboard
    Created on : Feb 6, 2022, 9:23:13 PM
    Author     : syafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
            <jsp:include page="header.jsp" />

        <header class="bg-black py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <h1 class="display-5 fw-bolder text-white mb-2">Manager Dashboard</h1>
                            <p class="lead text-white-50 mb-4">Manage your restaurant</p>
                            
<!--                             <div class="mb-0">
                                   
                                    <a href="register.jsp" class="btn btn-success">
                                        New User?
                                    </a>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>
            
                        <jsp:include page="ViewAllMenu.jsp" />

            
        
    </body>
</html>
