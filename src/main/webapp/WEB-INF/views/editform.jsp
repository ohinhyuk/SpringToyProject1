<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022/12/22
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="sid"/>
    <table id="edit">
        <tr><td><form:input path="name" /></td></tr>
        <tr><form:input path="gender" /></tr>
        <tr><form:input path="age" /> </tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>
