<%--
  Created by IntelliJ IDEA.
  User: ian
  Date: 2022/12/21
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<h1>CSS Test - List</h1>
    <img src="img/tree.png"/>
    <c:forEach var="u" items="${list}">
        <br>
        ${u.sid}-${u.name}-${u.gender}-${u.age}-${u.regdate}
        <a href="deleteok/${u.sid}">삭제!</a>
        <button type="button" onclick="location.href='editform/${u.sid}'">글수정</button>
    </c:forEach>
<button type="button" onclick="location.href='add'">새글쓰기</button>

하
</body>
</html>
