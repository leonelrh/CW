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

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="image/Logo.jpg" />
    <link rel="icon" type="image/png" href="image/Logo.jpg" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title> Workspaces </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="css/Dashboard/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="css/Dashboard/material-dashboard.css?v=1.2.1" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black" data-image="image/sidebar-3.jpg">
        <!--
    Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
    Tip 2: you can also add an image using data-image tag
    Tip 3: you can change the color of the sidebar with data-background-color="white | black"
-->
        <div class="logo">
            <a href="index.jsp" class="simple-text logo-mini">
                WS
            </a>
            <a href="index.jsp" class="simple-text logo-normal">
                WORKSPACES
            </a>
        </div>

        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="image/profile2.jpg" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                            <span>
                                Kevin
                                <b class="caret"></b>
                            </span>
                    </a>
                    <div class="clearfix"></div>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini"> MP </span>
                                    <span class="sidebar-normal"> Mi Perfil </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini"> EP </span>
                                    <span class="sidebar-normal"> Editar Perfil </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sidebar-mini"> S </span>
                                    <span class="sidebar-normal"> Configuración </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <ul class="nav">
                <li >
                    <a href="index2.jsp">
                        <i class="material-icons">dashboard</i>
                        <p> Mi Perfil  </p>
                    </a>
                </li>
                <li class="active">
                    <a href="prueba4.jsp">
                        <i class="material-icons">image</i>
                        <p> Oficinas  </p>
                    </a>
                </li>

                <li>
                    <a href="prueba3.jsp">
                        <i class="material-icons">content_paste</i>
                        <p> Registrar
                        </p>
                    </a>

                </li>
                <li>
                    <a href="prueba5.jsp">
                        <i class="material-icons">grid_on</i>
                        <p> Reservas
                        </p>
                    </a>

                </li>

                <li>
                    <a href="chart.jsp">
                        <i class="material-icons">timeline</i>
                        <p> Dashboard </p>
                    </a>
                </li>

                <li>
                    <a data-toggle="collapse" href="#componentsExamples">
                        <i class="material-icons">apps</i>
                        <p> Componentes
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="componentsExamples">
                        <ul class="nav">

                            <li>
                                <a href="./components/icons.html">
                                    <span class="sidebar-mini"> I </span>
                                    <span class="sidebar-normal"> Icons </span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </li>




            </ul>


        </div>

    </div>

    <div class="main-panel">


        <nav class="navbar navbar-transparent navbar-absolute">
            <div class="container-fluid">
                <div class="navbar-minimize">
                    <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                        <i class="material-icons visible-on-sidebar-regular">more_vert</i>
                        <i class="material-icons visible-on-sidebar-mini">view_list</i>
                    </button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> Oficinas</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">dashboard</i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">notifications</i>
                                <span class="notification">5</span>
                                <p class="hidden-lg hidden-md">
                                    Notifications
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Mike John responded to your email</a>
                                </li>
                                <li>
                                    <a href="#">Tu tienes 5 nuevas tareas</a>
                                </li>
                                <li>
                                    <a href="#">You're now friend with Andrew</a>
                                </li>
                                <li>
                                    <a href="#">Another Notification</a>
                                </li>
                                <li>
                                    <a href="#">Another One</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="material-icons">person</i>
                                <p class="hidden-lg hidden-md">Profile</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group form-search is-empty">
                            <input type="text" class="form-control" placeholder=" Buscar ">
                            <span class="material-input"></span>
                        </div>
                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                            <i class="material-icons">search</i>
                            <div class="ripple-container"></div>
                        </button>
                    </form>
                </div>
            </div>
        </nav>

        <!-- Agregar codigo -->

        <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card-content">

                                <!--<div class="card-actions"> </div> -->

                                <div class="row">



                                    <div class="col-md-12">

                                        <!--<div class="card-description">
                                            <div class="form-group label-floating is-empty">
                                                <label class="control-label">Categoria</label>
                                                <select name="categoryId" class="form-control">
                                                    <option disabled="" selected=""> </option>

                                                    <option value="101">Oficina</option>
                                                    <option value="102">Escritorio personal</option>
                                                    <option value="103">Hot desk</option>


                                                </select>
                                                <span class="material-input"></span></div>
                                        </div>
                                    </div>
                                    -->

                                        <div class="dropdown">

                                            Ordenado
                                            <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown"> Por:
                                                <span class="caret"></span></button>
                                            <!--cambio 08/10/2018 Kevin -->
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                <li role="presentation"><a  href="offices?action=order&typeOrder=1" role="menuitem" tabindex="-1">Ubicación</a></li>
                                                <li role="presentation"><a  href="offices?action=order&typeOrder=2" role="menuitem" tabindex="-1">Precio</a></li>
                                                <li role="presentation"><a  href="#" role="menuitem" tabindex="-1">Evaluación</a></li>

                                            </ul>
                                        </div>

                                    </div>


                                </div>


                        </div>
                    </div>

                    <br>

                    <br>
                    <div class="row">

                        <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

                        <!--cambio 08/10/2018 Kevin  uso de procedimiento almacenado-->
                        <c:forEach var="office" items="${service.getOfficesOrderByX(1)}">

                            <div class="col-md-4">
                                <div class="card card-product">
                                    <div class="card-image" data-header-animation="true">
                                        <a href="#pablo">
                                            <img class="img" src="image/${office.photo}" style="height: 200px">
                                        </a>
                                    </div>
                                    <div class="card-content">
                                        <div class="card-actions">
                                            <button type="button" class="btn btn-danger btn-simple fix-broken-card">
                                                <i class="material-icons">build</i> Fijar imagen
                                            </button>
                                            <a href="offices?action=list&id=<c:out value="${office.id}"/>"><button type="button" class="btn btn-default btn-simple" rel="tooltip" data-placement="bottom" title="Detalle">
                                                <i class="material-icons">art_track</i>
                                            </button></a>
                                            <a href="offices?action=edit&id=<c:out value="${office.id}"/>"> <button href="prueba3.jsp" type="button" class="btn btn-success btn-simple" rel="tooltip" data-placement="bottom" title="Editar">
                                                <i class="material-icons">edit</i>
                                            </button></a>
                                            <a href="offices?action=delete&id=<c:out value="${office.id}"/>"><button type="button" class="btn btn-danger btn-simple" rel="tooltip" data-placement="bottom" title="Eliminar">
                                                <i class="material-icons">close</i>
                                            </button></a>
                                        </div>
                                        <h4 class="card-title">
                                            <a href="#pablo"> ${office.title} </a>
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
                                            <p class="category"><i class="material-icons">place</i> ${office.address} </p>
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </c:forEach>




                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Inicio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Nosotros
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Oficinas
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Servicios
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com"> Workspaces </a>, Todos los derechos reservados
                    </p>
                </div>
            </footer>


        </div>
    </div>
</div>
</body>
<!--   Core JS Files   -->
<script src="js/Pruebas/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="js/Pruebas/bootstrap.min.js" type="text/javascript"></script>
<script src="js/Pruebas/material.min.js" type="text/javascript"></script>
<script src="js/Pruebas/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>


<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="js/Pruebas/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="js/Pruebas/material-dashboard.js?v=1.2.1"></script>



</html>