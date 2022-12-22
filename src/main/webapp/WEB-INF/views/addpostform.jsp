<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022/12/22
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addok" method="POST">
    <table id="add">
        <tr><input type="text" name="name"/></tr>
        <tr><input type="text" name="gender"/></tr>
        <tr><input type="text" name="age"/></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>
