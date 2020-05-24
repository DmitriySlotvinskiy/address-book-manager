<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read record from Address Book</title>
</head>
<body>
<%@include file="header.html" %>

<%
    String firstName = (String) request.getAttribute("first-name");
    String lastName = (String) request.getAttribute("last-name");
    String Address = (String) request.getAttribute("address");
%>

<table>
    <tr>
        <td>First name:</td>
        <td><%=firstName%>
        </td>
    </tr>
    <tr>
        <td>Last name:</td>
        <td><%=lastName%>
        </td>
    </tr>
    <tr>
        <td>Address:</td>
        <td><%=Address%>
        </td>
    </tr>
</table>
</body>
</html>
