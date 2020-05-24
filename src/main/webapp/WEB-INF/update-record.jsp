<%--
  Created by IntelliJ IDEA.
  User: HomePC
  Date: 24.05.2020
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update record in Address Book</title>
</head>
<body>
<%@include file="header.html" %>

<form action="/records/update" method="post">

    <%
        String firstName = (String) request.getAttribute("first-name");
        String lastName = (String) request.getAttribute("last-name");
    %>

    <table>
        <tr>
            <td>
                <label for="firstName">FirstName: </label>
            </td>
            <td>
                <input type="text" id="firstName" name="first-name" value="<%=firstName%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">LastName: </label>
            </td>
            <td>
                <input type="text" id="lastName" name="last-name" value="<%=lastName%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>
