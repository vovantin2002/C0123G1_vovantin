<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display</title>
</head>
<body>
<h1>Danh sach san pham</h1>
<p>
    <a href="/product?action=create">Them moi san pham</a>
    <br>
    <a href="/product?action=delete">Xoa san pham</a>
</p>
<form action="/product?action=search" method="post">
    Nhap ten san pham: <input type="text" name="name">
    <button type="submit">Tim kiem</button>
</form>
<p>


</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td><c:out value="${product.id}"/></td>
            <td><c:out value="${product.name}"/></td>
            <td><c:out value="${product.price}"/></td>
            <td><c:out value="${product.describe}"/></td>
            <td><c:out value="${product.producer}"/></td>
            <td>
                <button name="id" type="submit"><a href="/product?action=edit"></a>Edit</button>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
