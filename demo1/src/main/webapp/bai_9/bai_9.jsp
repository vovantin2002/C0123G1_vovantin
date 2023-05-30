<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/29/2023
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/discount-servlet">Product Discount Calculator
    <br>
    <br>
    <label for="description">Product Description</label>
    <input type="text" name="description" id="description">

    <label for="price">List Price</label>
    <input type="number" name="price" id="price">

    <label for="discount_percent">Discount Percent</label>
    <input type="number" name="discount_percent" id="discount_percent">
    <br>
    <button type="submit" value="result">
        Calculate Discount
    </button>
</form>
</body>
</html>
