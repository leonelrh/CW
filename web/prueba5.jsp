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
    <link href="css/Dashboard/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black" data-image=image/sidebar-3.jpg">
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
                                Leonel Ramos
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
                <li>
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
                <li class="active">
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
                    <a class="navbar-brand" href="#"> Informacion </a>
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
                                    <a href="#">You have 5 new tasks</a>
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


        <div class="content">
            <div class="container-fluid">
                <div class="row">


                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-header card-header-text" data-background-color="default">
                                <h4 class="card-title"> Oficinas </h4>
                            </div>
                            <div class="card-content table-responsive">
                                <table class="table table-hover">
                                    <thead class="text-default">
                                    <th>Titulo</th>
                                    <th>Precio</th>
                                    <th>Direccion</th>
                                    <th>Opciones </th>
                                    </thead>
                                    <tbody>
                                    <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                                    <%String ides=(String)request.getSession().getAttribute("uorganizer");%>
                                    <c:forEach var="office" items="<%=service.getOffices()%>">
                                        <tr>
                                            <td><c:out value="${office.title}"/></td>
                                            <td><c:out value="${office.price}"/></td>
                                            <td><c:out value="${office.address}"/></td>
                                            <td class="td-actions text-left">

                                                <button type="button" rel="tooltip" class="btn btn-info btn-simple" data-toggle="modal" data-target="#noticeModal">
                                                    <i class="material-icons">dvr</i>
                                                </button>

                                                <button type="button" rel="tooltip" class="btn btn-warning btn-simple" data-toggle="modal" data-target="#editmodal">
                                                    <i class="material-icons">edit</i>
                                                </button>
                                                <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                    <i class="material-icons">close</i>
                                                </button>
                                            </td>
                                        </tr>

                                    </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <!-- notice modal -->
                        <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-notice">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                                        <h5 class="modal-title" id="myModalLabel">How Do You Become an Affiliate?</h5>
                                    </div>
                                    <div class="modal-body">
                                        <div class="instruction">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <strong>1. Register</strong>
                                                    <p>The first step is to create an account at
                                                        <a href="http://www.creative-tim.com/">Creative Tim</a>. You can choose a social network or go for the classic version, whatever works best for you.</p>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="picture">
                                                        <img src="../../assets/img/card-1.jpeg" alt="Thumbnail Image" class="img-rounded img-responsive">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="instruction">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <strong>2. Apply</strong>
                                                    <p>The first step is to create an account at
                                                        <a href="http://www.creative-tim.com/">Creative Tim</a>. You can choose a social network or go for the classic version, whatever works best for you.</p>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="picture">
                                                        <img src="../../assets/img/card-2.jpeg" alt="Thumbnail Image" class="img-rounded img-responsive">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p>If you have more questions, don't hesitate to contact us or send us a tweet @creativetim. We're here to help!</p>

                                    </div>


                                    <div class="modal-footer text-center">
                                        <button type="button" class="btn btn-info btn-round" data-dismiss="modal">Sounds good!</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end notice modal -->


                        <!-- notice modal -->
                        <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="myModaledit" aria-hidden="true">
                            <div class="modal-dialog modal-notice">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                                        <h5 class="modal-title" id="myModaledit">Modificar informacion</h5>
                                    </div>
                                    <div class="modal-body">



                                        <form class="form" action="users" method="post" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Codigo </label>
                                                        <input type="text" class="form-control" value="${user.id}" disabled>
                                                        <input type="hidden" value="${user.id}" name="id">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Email </label>
                                                        <input type="email" class="form-control" value="${user.email}" name="email">

                                                    </div>
                                                </div>
                                            </div>

                                            <!-- form-control -->

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Nombre </label>
                                                        <input type="text" class="form-control" value="${user.firstName}" name="firstName">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Apellido </label>
                                                        <input type="text" class="form-control" value="${user.lastName}" name="lastName">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Direccion </label>
                                                        <input type="text" class="form-control" value="${user.address}" name="address">
                                                        <input type="hidden" value="${user.photo}" name="photo">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Ciudad </label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Celular  </label>
                                                        <input type="text" class="form-control" value="${user.phone}" name="phone">
                                                    </div>
                                                </div>
                                            </div>



                                        </form>


                                    </div>
                                    <div class="modal-footer text-center">
                                        <button type="button" class="btn btn-success btn-round" data-dismiss="modal">EDITAR</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end notice modal -->



                    </div>


                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-header card-header-text" data-background-color="default">
                                <h4 class="card-title"> Clientes </h4>
                            </div>
                            <div class="card-content table-responsive">
                                <table class="table table-hover">
                                    <thead class="text-default">
                                    <th>Codigo</th>
                                    <th>Nombre</th>
                                    <th>Email</th>
                                    <th>Opciones </th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1001</td>
                                        <td>Jorge</td>
                                        <td>jroge@gmail.com</td>
                                        <td class="td-actions text-left">
                                            <button type="button" rel="tooltip" class="btn btn-info btn-simple">
                                                <i class="material-icons">dvr</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-warning btn-simple">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1002</td>
                                        <td>Luis</td>
                                        <td>luilope2@gmail.com</td>
                                        <td class="td-actions text-left">
                                            <button type="button" rel="tooltip" class="btn btn-info btn-simple">
                                                <i class="material-icons">dvr</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-warning btn-simple">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1003</td>
                                        <td>Erick</td>
                                        <td>Erpala@gmail.com</td>
                                        <td class="td-actions text-left">
                                            <button type="button" rel="tooltip" class="btn btn-info btn-simple">
                                                <i class="material-icons">dvr</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-warning btn-simple">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1004</td>
                                        <td>Alessandra</td>
                                        <td>Alerana@gmail.com</td>
                                        <td class="td-actions text-left">
                                            <button type="button" rel="tooltip" class="btn btn-info btn-simple">
                                                <i class="material-icons">dvr</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-warning btn-simple">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1005</td>
                                        <td>Alondra</td>
                                        <td>Alondrah@gmail.com</td>
                                        <td class="td-actions text-left">
                                            <button type="button" rel="tooltip" class="btn btn-info btn-simple">
                                                <i class="material-icons">dvr</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-warning btn-simple">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" class="btn btn-danger btn-simple">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-text" data-background-color="default">
                                <h4 class="card-title"> Reservaciones </h4>
                            </div>
                            <div class="card-content">
                                <div class="toolbar">
                                    <!--        Here you can write extra buttons/actions for the toolbar              -->
                                </div>
                                <div class="material-datatables">
                                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th> ID </th>
                                            <th> Fecha Inicio </th>
                                            <th> Estado </th>
                                            <th> Fecha Fin </th>
                                            <th> Horas </th>
                                            <th class="disabled-sorting text-right"> Opciones </th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        <%String ide=(String)request.getSession().getAttribute("uorganizer");%>
                                        <c:forEach var="reservation" items="<%=service.getReservations()%>">

                                        <tr>
                                            <td><c:out value="${reservation.id}"/></td>
                                            <td><c:out value="${reservation.starDate}"/></td>
                                            <td><c:out value="${reservation.state}"/></td>
                                            <td><c:out value="${reservation.endDate}"/></td>
                                            <td><c:out value="${reservation.hours}"/></td>
                                            <td class="text-right">
                                                <a href="#" class="btn btn-simple btn-info btn-icon like"><i class="material-icons">dvr</i></a>
                                                <a href="#" class="btn btn-simple btn-warning btn-icon edit"><i class="material-icons">edit</i></a>

                                                <a href="reservations?action=delete&id=<c:out value="${reservation.id}"/>">
                                                    <button type="button" rel="tooltip" class="btn btn-simple btn-danger btn-icon">
                                                        <i class="material-icons">close</i></button></a>
                                            </td>
                                        </tr>

                                        </c:forEach>

                                        </tbody>


                                    </table>
                                </div>
                            </div>
                            <!-- end content-->
                        </div>
                        <!--  end card  -->
                    </div>
                    <!-- end col-md-12 -->
                </div>
                <!-- end row -->



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
                    <a href=""> workspaces </a>, todos los derechos reservados
                </p>
            </div>
        </footer>


    </div>
</div>
</body>
<!--   Core JS Files   -->
<script src="js/Pruebas/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="js/Pruebas/bootstrap.min.js" type="text/javascript"></script>
<script src="js/Pruebas/material.min.js" type="text/javascript"></script>
<script src="js/Pruebas/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="js/Pruebas/arrive.min.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="js/Pruebas/jquery.validate.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="js/Pruebas/moment.min.js"></script>
<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="js/Pruebas/chartist.min.js"></script>
<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="js/Pruebas/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="js/Pruebas/bootstrap-notify.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="js/Pruebas/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="js/Pruebas/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="js/Pruebas/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="js/Pruebas/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="js/Pruebas/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="js/Pruebas/sweetalert2.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="js/Pruebas/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="js/Pruebas/fullcalendar.min.js"></script>
<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="js/Pruebas/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="js/Pruebas/material-dashboard.js?v=1.2.1"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="js/Pruebas/demo.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('#datatables').DataTable({
            "pagingType": "full_numbers",
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
            responsive: true,
            language: {
                search: "_INPUT_",
                searchPlaceholder: " Buscar ",
            }

        });


        var table = $('#datatables').DataTable();

        // Edit record
        table.on('click', '.edit', function() {
            $tr = $(this).closest('tr');

            var data = table.row($tr).data();
            alert('You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.');
        });

        // Delete a record
        table.on('click', '.remove', function(e) {
            $tr = $(this).closest('tr');
            table.row($tr).remove().draw();
            e.preventDefault();
        });

        //Like record
        table.on('click', '.like', function() {
            alert('You clicked on Like button');
        });

        $('.card .material-datatables label').addClass('form-group');
    });
</script>


</html>
