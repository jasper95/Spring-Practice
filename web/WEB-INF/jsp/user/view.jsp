<%-- 
    Document   : viewUser
    Created on : Apr 1, 2015, 7:23:38 PM
    Author     : Bert
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View User</h1>
        Username: ${user.username} <br/>
        Roles: ${user.getRoles()}
    </body>
</html>
