<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022/12/21
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach var="item" items="${list}">
        <p>${item}</p>
    </c:forEach>
</body>
</html>
