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

        <h1>Hello ${sessionScope.u.getUserName()}</h1>
        
        
    </body>
</html>
