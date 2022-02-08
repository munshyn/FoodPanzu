<%-- 
    Document   : ViewAllUser
    Created on : Jan 5, 2022, 10:02:03 PM
    Author     : User
--%>

<%@page import="Model.Menu"%>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet" />
        <title>All Menu</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <header class="header-home py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5 glass py-2">
                            <h1 class="display-5 fw-bolder text-white mb-2">ALL MENU</h1>
                            <!--<p class="lead text-white-50">Add New Menu</p>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="fixed-bottom mb-4 ml-4">
            <a class="btn btn-success" href="NewMenuForm.jsp">Insert New Menu</a>
        </div>
        <!--<h1>View All Menu</h1>-->
        <div class="container mt-4">
            
            <ul class="nav nav-tabs justify-content-center mb-4">
                <li class="active"><a class="btn btn-primary btn-lg mr-2" href="#panel1" data-toggle="tab">Food</a></li>
                <li><a class="btn btn-primary btn-lg mr-2" href="#panel2" data-toggle="tab">Drink</a></li>
                <li><a class="btn btn-primary btn-lg mr-2" href="#panel3" data-toggle="tab">Dessert</a></li>
            </ul>

            <div class="tab-content">
                <div id="panel1" class="tab-pane show active">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Food Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price (RM)</th>
                                <th scope="col" colspan="2">Action</th>
                            </tr>
                        </thead>
                        <%
                            List<Menu> ul = (List<Menu>) request.getAttribute("ml");
                            for (int i = 0; i < ul.size(); i++) {
                                if (ul.get(i).getCategory().equalsIgnoreCase("Food")) {
                        %>
                        <tbody>
                            <tr>
                                <td><%=ul.get(i).getMenuCode()%></td>
                                <td><%=ul.get(i).getFdName()%><br><img src="<%=ul.get(i).getFdImage()%>" alt="Food Image" width="200" height="200"></td>
                                <td><%=ul.get(i).getFdDesc()%></td>
                                <td><%=ul.get(i).getPrice()%></td>
                                <td>
                                    <form method="get" action="GetMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                    </form>
                                </td>
                                <td>
                                    <form method="get" action="DeleteMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                                <%}
                            }%>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="panel2" class="tab-pane">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Food Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price (RM)</th>
                                <th scope="col" colspan="2">Action</th>
                            </tr>
                        </thead>
                        <%

                            for (int i = 0; i < ul.size(); i++) {
                                if (ul.get(i).getCategory().equalsIgnoreCase("Drink")) {
                        %>
                        <tbody>
                            <tr>
                                <td><%=ul.get(i).getMenuCode()%></td>
                                <td><%=ul.get(i).getFdName()%><br><img src="<%=ul.get(i).getFdImage()%>" alt="Food Image" width="200" height="200"></td>
                                <td><%=ul.get(i).getFdDesc()%></td>
                                <td><%=ul.get(i).getPrice()%></td>
                                <td>
                                    <form method="get" action="GetMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                    </form>
                                </td>
                                <td>
                                    <form method="get" action="DeleteMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                                <%}
                            }%>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="panel3" class="tab-pane">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Food Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price (RM)</th>
                                <th scope="col" colspan="2">Action</th>
                            </tr>
                        </thead>
                        <%

                            for (int i = 0; i < ul.size(); i++) {
                                if (ul.get(i).getCategory().equalsIgnoreCase("Dessert")) {
                        %>
                        <tbody>
                            <tr>
                                <td><%=ul.get(i).getMenuCode()%></td>
                                <td><%=ul.get(i).getFdName()%><br><img src="<%=ul.get(i).getFdImage()%>" alt="Food Image" width="200" height="200"></td>
                                <td><%=ul.get(i).getFdDesc()%></td>
                                <td><%=ul.get(i).getPrice()%></td>
                                <td>
                                    <form method="get" action="GetMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-primary">Edit</button>
                                    </form>
                                </td>
                                <td>
                                    <form method="get" action="DeleteMenuController">
                                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                                <%}
                            }%>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </body>
</html>
