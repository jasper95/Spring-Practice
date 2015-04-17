<%-- 
    Document   : addUserForm
    Created on : Apr 1, 2015, 7:22:05 PM
    Author     : Bert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Add user</h3>
        
        <form:form method="POST" action="add" commandName="user">
            <p>
                <form:errors path="username" element="div"/>
                Username: <form:input path="username" /><br/>
                <form:errors path="password" element="div"/>
                Password: <form:password path="password"/><br/>
                <form:errors path="roles" element="div"/>
                Roles : <form:checkboxes path="roles" element="div" items="${roles}" itemValue="id" itemLabel="roleName"/>
            </p>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>