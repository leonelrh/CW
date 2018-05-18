<%@ page import="pe.com.coworking.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 16/04/2018
  Time: 2:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

fdfsdfsdf
<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<%String name = (String)request.getAttribute("myname"); %>
<%= name%>

<c:forEach var="user" items="<%=service.getUsersById(name)%>">

            <h4><label> ID : </label> ${user.id} </h4><p></p>
            <h4><label>  NOMBRE : </label> ${user.firstName} </h4><p></p>
            <h4><label> APELLIDO : </label> ${user.lastName} </h4><p></p>
            <h4><label>  EMAIL : </label> ${user.email} </h4><p></p>
</c:forEach>


</body>
</html>
