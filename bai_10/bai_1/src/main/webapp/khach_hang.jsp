<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2023
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/khach-hang-servlet">Danh sách khách hàng</a>
<h3>Danh sách khách hàng</h3>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${khachHangList}" var="k" varStatus="loop">
        <tr>
            <td><c:out value="${loop.count}"/></td>
            <td><c:out value="${k.name}"/></td>
            <td><c:out value="${k.ngaySinh}"/></td>
            <td><c:out value="${k.diaChi}"/></td>
            <td><img src="http://thuthuat123.com/uploads/2015/11/21/hinh-nen-may-tinh-hoa-dep-2_035347.jpg"
                     width="30" height="30" alt=""></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
