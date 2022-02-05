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
        <title>All Menu</title>
    </head>
    <body>
        <div class="container">
        <h1>View All Menu</h1>
        
        <a class="btn btn-success" href="login.jsp">Insert New Menu</a>
        
        <table class="table table-dark">
            <thead>
                <tr>
                    <th scope="col">i</th>
                    <th scope="col">ID</th>
                    <th scope="col">Food Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <%
                List<Menu> ul = (List<Menu>)request.getAttribute("ml");
                for(int i=0;i<ul.size();i++){
            %>
            <tbody>
                <tr>
                    <th scope="row"><%=i%></th>
                    <td><%=ul.get(i).getMenuCode()%></td>
                    <td><%=ul.get(i).getFdName()%><br><img src="<%=ul.get(i).getFdImage()%>" alt="Food Image" width="200" height="200"></td>
                    <td><%=ul.get(i).getFdDesc()%></td>
                    <td><%=ul.get(i).getPrice()%></td>
                    <td><%=ul.get(i).getCategory()%></td>
                    <td>
                        <form method="get" action="GetMenuController">
                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                            <button type="submit" class="btn btn-primary">View</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="DeleteMenuController">
                        <input type="hidden" name="menuCode" value="<%=ul.get(i).getMenuCode()%>">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
               <% } %>
                </tr>
            </tbody>
        </table>
        </div>
    </body>
</html>
