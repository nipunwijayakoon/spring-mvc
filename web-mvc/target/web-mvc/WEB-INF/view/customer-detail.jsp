<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/24/2023
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
name & Address : ${customer.name} | ${customer.address}
<hr>
city:${customer.city}
<ul>
    <c:forEach var="data" items="${customer.cardType}">
    <li>${data}</li>
    </c:forEach>
</ul>
<hr>
${customer.jobType}
</body>
</html>
