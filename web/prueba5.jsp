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

    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title> CoWorking </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap3.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo3.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="css/themify-icons.css" rel="stylesheet">

</head>

<body>


<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-color="black" >

        <!--
            Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
            Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
        -->

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
                <li >
                    <a href="prueba4.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p> Oficinas </p>
                    </a>
                </li>
                <li class="active">
                    <a href="typography.html">
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

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">5</p>
                                <p> Notificaciones </p>
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
                                <p> Configuracion </p>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
                                <p>Cerrar Sesion</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


<div class="table-responsive">
<table class="table table-hover">
    <tr>
        <th> ID </th>
        <th> FECHA INICIO </th>
        <th> ESTADO </th>
        <th> FECHA FIN </th>
        <th> HORAS </th>
        <th> PAGADO </th>
        <th> EDITAR </th>
        <th> ELIMINAR </th>
        <%--   <th>Delete</th>--%>
    </tr>

    <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
    <%String ide=(String)request.getSession().getAttribute("uorganizer");%>
    <c:forEach var="reservation" items="<%=service.getReservations()%>">
        <tr><td><c:out value="${reservation.id}"/></td>
            <td><c:out value="${reservation.starDate}"/></td>
            <td><c:out value="${reservation.state}"/></td>
            <td><c:out value="${reservation.endDate}"/></td>
            <td><c:out value="${reservation.hours}"/></td>
            <td> <c:out value="${reservation.paid}"/></td>
            <td >
                <button type="button" rel="tooltip" class="btn btn-success">
                    <i class="material-icons"> Edit </i>
                </button>
                </td>
                <td>
                <button type="button" rel="tooltip" class="btn btn-danger">
                    <i class="material-icons"> Del </i>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
    </div>






    </div>
</div>


</body>

<!--   Core JS Files   -->
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap3.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="js/demo.js"></script>

</html>
