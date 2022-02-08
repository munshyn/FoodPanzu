<%-- 
    Document   : newjsp
    Created on : Feb 7, 2022, 4:50:55 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style-main.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
      <div class="container-main">
	<div class="middle"></div><!--background image here -->
	<div class="welcome-text tracking-in-expand">
		<p id="p1">WELCOME TO DASHBOARD PAGE </p>
		<p id="p2">FOOD ORDERING SYSTEM</p>
	</div>

	<div class="footer"></div><!-- footer here -->
	
	
	<a href="#" class="box" id="box-1">
		<img src="" alt="manage user" class="icon">
		<p>Manage users</p>
	</a>
	<a href="GetAllMenuController" class="box" id="box-2">
		<img src="" alt="view Menu" class="icon">
		<p>View Menu</p> 
	</a>
	<a href="totalsales.jsp" class="box" id="box-3">
		<img src="" alt="view sale" class="icon"> 
		<p>View Total Sales</p> 
	</a>
	</div><!-- container end -->  
    </body>
</html>
