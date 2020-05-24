<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of records from Address Book</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<br>
<table>
    <tr>
        <td>
            Sort by:
        </td>
        <td>
            <a href="/records/list?sort=asc">ascending</a> |
        </td>
        <td>
            <a href="/records/list?sort=desc">descending</a>
        </td>
    </tr>

</table>
<table border="1">
    <th>Id</th>
    <th>Username</th>
    <th>Password</th>
    <th colspan="3">Operations</th>

    <%
        for (String res : (String[]) request.getAttribute("records")) {
            res = res.replace("First name: ", "");
            res = res.replace("Last name: ", "");
            res = res.replace("Address: ", "");
            res = res.replaceAll("\\s+", "");
            String[] resArray = res.split("[,]");
            String firstName = resArray[0];
            String lastName = resArray[1];
            String address = resArray[2];
    %>

    <tr>
        <td><%=firstName%>
        </td>
        <td><%=lastName%>
        </td>
        <td><%=address%>
        </td>
        <td>
            <a href="/records/read?first-name=<%=firstName%>&last-name=<%=lastName%>">Read</a>
        </td>
        <td>
            <a href="/records/update?first-name=<%=firstName%>&last-name=<%=lastName%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?first-name=<%=firstName%>&last-name=<%=lastName%>">Delete</a>
        </td>
    </tr>

    <%
        }
    %>

</table>
</body>
</html>
