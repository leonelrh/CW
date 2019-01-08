<%@ page import="pe.com.coworking.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 29/04/2018
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<% Integer variable = (Integer)request.getSession().getAttribute("variable");
    response.getWriter().print("<p> La variable vale " + variable + "</p>");
%>--%>

<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<%
    User user=service.getUserById(180000);
    response.getWriter().print("<p> La variable vale " + user.getLastName() + "</p>");

%>

<%--<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
<c:forEach var="user" items="${service.getUsersById(38)}">
    <p><c:out value="${user.firstname}"/></p>
</c:forEach>--%>

</body>
</html>
