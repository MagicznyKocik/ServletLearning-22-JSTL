<%--
  Created by IntelliJ IDEA.
  User: azlup
  Date: 25.02.2019
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Function JSP</title>
</head>
<body>
    <c:if test="${not empty param.name}">
        <c:out value="${fn:toUpperCase(param.name)}"/>
    </c:if>
<h3> In header you have <c:out value="${fn:length(header)}"/> elements</h3>
<c:forEach var="headerItem" items="${header}">
    <c:out value="${fn:toUpperCase(headerItem.key)}"/> : <c:out value="${fn:toLowerCase(headerItem.value)}"/>
    <br>
</c:forEach>
<br>
    <c:set var="strings" value="${fn:split('Ala ma kota zmieniana na tablicę', ' ') }"/>
    <c:set var="joined" value="${fn:join(strings, '--') }"/>
    <c:out value="${joined }" />
    <br>
    <c:if test="${fn:startsWith(joined, 'Ala') }">
        Hura!
    </c:if>
    <c:out value="${fn:replace(joined, 'Ala', 'Adam') }" />
</body>
</html>
