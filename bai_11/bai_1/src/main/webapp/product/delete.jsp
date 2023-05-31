<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
</head>
<body>
<form action="/product?action=delete" method="post">
    <h1>Xoa san pham</h1>
    Nhap id muon xoa: <input type="number" name="id">
    <br>
    <button type="submit">xoa</button>
</form>
</body>
</html>
