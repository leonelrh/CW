<%@ page import="pe.com.coworking.models.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 02/05/2018
  Time: 0:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> CoWorking </title>

    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <meta name="viewport" content="width=device-width" />

    <link href="css/bootstrap5.min.css" rel="stylesheet" />

    <link href="css/material-dashboard.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />



    <link href="css/paper-dashboard.css" rel="stylesheet"/>
    <link href="css/themify-icons.css" rel="stylesheet">

</head>
<body>


<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-color="black" >

        <div class="sidebar-wrapper" >
            <div class="logo">
                <a href="index.jsp" class="simple-text">
                    CoWorking
                </a>
            </div>

            <ul class="nav">
                <li >
                    <a href="index2.jsp">
                        <i class="ti-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li >
                    <a href=" prueba3.jsp">
                        <i class="ti-panel"></i>
                        <p> Registrar Oficina </p>
                    </a>
                </li>
                <li class="active">
                    <a href="prueba4.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p> Oficinas </p>
                    </a>
                </li>
                <li>
                    <a href="prueba5.jsp">
                        <i class="ti-ticket" ></i>
                        <p> Reservas realizadas </p>
                    </a>
                </li>
                <li>
                    <a href="icons.html">
                        <i class="ti-files"></i>
                        <p> Informacion </p>
                    </a>
                </li>
                <li>
                    <a href="maps.html">
                        <i class="ti-calendar"></i>
                        <p> Equipo </p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="ti-pie-chart"></i>
                        <p> Dashboard </p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">

        <nav class="navbar navbar-default " >
            <div class="container-fluid" >
                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">User Profile</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
                                <p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">5</p>
                                <p>Notifications</p>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="ti-settings"></i>
                                <p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

<div class="main-content">
    <div class="container-fluid">


        <div class="row">
            <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
            <form> </form>
            <c:forEach var="office" items="${service.offices}">
            <div class="col-md-4">

     <%--       <div class="col-lg-4 col-md-6">--%>
                <div class="card card-product">
                    <div class="card-image" data-header-animation="true">
                        <a href="#pablo">
                            <img class="img" src="image/${office.id}.jpg" >
                        </a>
                    </div>
                    <div class="card-content">
                        <div class="card-actions">
                            <button type="button" class="btn btn-danger btn-simple fix-broken-card">
                                <i class="material-icons">build</i> Fix Header!
                            </button>
                            <a href="offices?action=list&id=<c:out value="${office.id}"/>"> <button  type="button" class="btn btn-default btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                <i class="material-icons">art_track</i>
                            </button></a>
                            <a href="offices?action=edit&id=<c:out value="${office.id}"/>"> <button href="prueba3.jsp" type="button" class="btn btn-success btn-simple" rel="tooltip" data-placement="bottom" title="Edit">
                                <i class="material-icons" >edit</i>
                            </button></a>
                            <a href="offices?action=delete&id=<c:out value="${office.id}"/>"><button  type="button" class="btn btn-danger btn-simple" rel="tooltip" data-placement="bottom" title="Remove" >
                                <i class="material-icons">close</i>
                            </button></a>
                        </div>
                        <h4 class="card-title">
                            <a href="#pablo">${office.title}</a>
                        </h4>
                        <div class="card-description">
                            ${office.description}
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="price">
                            <h4>$${office.price}/night</h4>
                        </div>
                        <div class="stats pull-right">
                            <p class="category"><i class="material-icons">place</i> ${office.address}</p>
                        </div>
                    </div>
                </div>
           <%-- </div>--%>
</div>
            </c:forEach>


        </div>



    </div>
</div>





    </div>
</div>



</body>

<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>

<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script src="js/paper-dashboard.js"></script>

</html>
