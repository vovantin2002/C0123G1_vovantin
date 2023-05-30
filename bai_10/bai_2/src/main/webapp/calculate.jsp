<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2023
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator">
    calculator <br>
    First Operand: <input type="number" name="num1"><br>
    Operator: <select name="operator" id=""><br>
    <option value="add">add</option>
    <option value="apart_from">apart from</option>
    <option value="core">core</option>
    <option value="divide">divide</option>
</select><br>
    Second Operand: <input type="number" name="num2"><br>
    <button type="submit">calculate</button>
</form>
</body>
</html>
