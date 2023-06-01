<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2023
  Time: 8:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>Cap nhat san pham</h1>
<form action="/product?action=edit" method="post">
    <fieldset>
        <table>
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
                    <button type="submit"> Cap nhat</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
