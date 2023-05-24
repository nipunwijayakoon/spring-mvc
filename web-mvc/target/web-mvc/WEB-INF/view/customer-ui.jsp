<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/24/2023
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <style>
        .error{
            color: red;
            font-style: italic;
        }
    </style>
</head>
<body>

<form:form action="/customers/register" modelAttribute="customer">
    <div>
        <label for="name"> Customer Name</label>
        <input id="name" type="text" placeholder="Sanath" name="name"><%-- call setters--%>
        <form:errors cssClass="error" path="name"/>
    </div>
    <div>
        <label for="address"> Customer Name</label>
        <input id="address" type="text" placeholder="Sanath" name="address"><%--    call setters--%>
    </div>
    <br>
    <hr>
    City <br>
    <form:select path="city">   <%--    call setters--%>
        <form:options items="${customer.cityData}"/>
        <%--    <form:option value="kaluthara" label="kaluthara"/>--%>
        <%--    <form:option value="Colombo" label="Colombo"/>--%>
        <%--    <form:option value="Galle" label="Galle"/>--%>
        <%--    <form:option value="Kandy" label="kandy"/>--%>
        <%--    <form:option value="Jaffna" label="Jaffna"/>--%>
    </form:select>
    <hr>
    HNB : <form:checkbox path="cardType" value="hnb"/>
    NSB : <form:checkbox path="cardType" value="nsb"/>
    BOC : <form:checkbox path="cardType" value="boc"/>
    NTB : <form:checkbox path="cardType" value="ntb"/>
    DFCC : <form:checkbox path="cardType" value="dfcc"/>
    <hr>
    Job Title
    <hr>
    SE<form:radiobutton path="jobType" value="Software Engineer"/>
    Farmer<form:radiobutton path="jobType" value="Farmer"/>
    Janitor<form:radiobutton path="jobType" value="Janitor"/>
    Clark<form:radiobutton path="jobType" value="Clark"/>
    <div>
        <input type="submit" value="register">
    </div>

</form:form>

</body>
</html>
