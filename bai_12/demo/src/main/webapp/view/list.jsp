<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2023
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<h1>Danh sach khach hang</h1>
<form action="display" method="post">
    <table border="1">
        <tr>
            <th>customer Id</th>
            <th>customer Name</th>
            <th>email</th>
            <th>Phone number</th>
            <th>address</th>
            <th>account Id</th>
            <th>createAt</th>
            <th>updateAt</th>
        </tr>
            <c:forEach items="${customerList}" var="customer">
        <tr>
        <td>${customer.customerId}</td>
        <td>${customer.customerName}</td>
        <td>${customer.email}</td>
        <td>${customer.phoneNumber}</td>
        <td>${customer.address}</td>
        <td>${customer.accountId}</td>
        <td>${customer.createAt}</td>
        <td>${customer.updateAt}</td>
        </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
