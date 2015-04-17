<%-- 
    Document   : users
    Created on : Mar 29, 2015, 10:20:18 AM
    Author     : Bert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Users list!</h1>
        <table>
            <tr>
                <th>Username</th>
            </tr>
        <c:forEach var="user" items="${users}">
            <c:url var="userUrl" value="/user/${user.getUsername()}"/>
            <tr>
                <td>
                    <a href="${userUrl}"><c:out value="${user.getUsername()}"></c:out></a>
                </td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
