<%--
  Created by IntelliJ IDEA.
  User: azlup
  Date: 25.02.2019
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title><c:out value="${param.name}"/></title>
</head>
<body>
    <%--condition--%>
    <c:if test="${not empty param.name}">
        <%--set attribute name as parameter name in request, attribute name scope is page--%>
        <c:set var="name" value="${param.name}" scope="page" />
        <%--show attribute--%>
        <h1>Hello <c:out value="${pageScope.name}"/></h1>
        <%--delete attribute--%>
        <c:remove var="name"/>
    </c:if>
<h2> What we know about you:</h2>
<h3>Cookies:</h3>
    <c:forEach var="cookieItem" items="${cookie}">
        <c:out value="${cookieItem.key}"/>:<c:out value="${cookieItem.value}"/>
        <br>
    </c:forEach>
<h3>Headers:</h3>
    <c:forEach var="headerItem" items="${header}">
        <c:out value="${headerItem.key}"/>:<c:out value="${headerItem.value}"/>
        <br>
    </c:forEach>

<c:if test="${not empty param.name}">
    <c:choose>
        <c:when test="${param.name eq 'Adam'}">
            <p>Your the best Adam!</p>
        </c:when>
        <c:when test="${param. name eq 'Emilia'}">
            <p>You are the best too Emilia!</p>
        </c:when>
        <c:otherwise>
            NO SECRET INFO
        </c:otherwise>
    </c:choose>
</c:if>
</body>
</html>
