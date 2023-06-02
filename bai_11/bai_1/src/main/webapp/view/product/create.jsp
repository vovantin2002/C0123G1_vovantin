<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/31/2023
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create</title>
</head>
<body>
<h1>Them moi san pham</h1>
<form action="/product?action=create" method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="number" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Describe:</td>
                <td><input type="text" name="describe" id="describe"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit"> add</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
