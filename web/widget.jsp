
<%@ page import="pe.com.coworking.models.*" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 19/04/2018
  Time: 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <link rel="apple-touch-icon" sizes="76x76" href="image/Logo.jpg">
    <link rel="icon" type="image/png" sizes="96x96" href="image/Logo.jpg">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title> Workspaces </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap core CSS     -->
    <link href="css/Dashboard/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="css/Dashboard/material-dashboard.css?v=1.2.1" rel="stylesheet" />

    <link href="css/Dashboard/demo.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="https://code.s4d.io/widget-space/production/bundle.js"></script>
    <link rel="stylesheet" href="https://code.s4d.io/widget-space/production/main.css">

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black" data-image="image/sidebar-3.jpg">
        <div class="logo">
            <a href="index.jsp" class="simple-text logo-mini">
                WS
            </a>
            <a href="index.jsp" class="simple-text logo-normal">
                WORKSPACES
            </a>
        </div>

        <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
        <%Integer name = (Integer)request.getSession().getAttribute("myname");
            List<User> usuari=service.getUsersById(name);
        %>

        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="image/profile2.jpg" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                            <span>
                                <%=usuari.get(0).getFirstName()%>
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
                <li class="active">
                    <a href="widget.jsp">
                        <i class="material-icons">comments</i>
                        <p> Teams </p>
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

        <div class="container">


        <div id="my-webexteams-widget" style="width: 500px; height: 500px;">
        </div>
        <script>
            var widgetEl = document.getElementById('my-webexteams-widget');
            // Init a new widget
            ciscospark.widget(widgetEl).spaceWidget({
                accessToken: 'ZDMzNTBjYTMtZGVjZS00M2IxLTk4NDUtMGI2N2M5MzFkM2VhYzZjMDRlMmEtYjA2',
                destinationId: 'Y2lzY29zcGFyazovL3VzL1JPT00vZmRkY2IwOTAtYzljMS0xMWU4LWFlMzgtZWY0MmU4OTRjNDdj',
                destinationType: 'spaceId'
            });
        </script>
    </div>

    </div>

</div>
</body>

<script src="js/Pruebas/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="js/Pruebas/bootstrap.min.js" type="text/javascript"></script>
<script src="js/Pruebas/material.min.js" type="text/javascript"></script>
<script src="js/Pruebas/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

<script src="js/Pruebas/bootstrap-notify.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="js/Pruebas/material-dashboard.js?v=1.2.1"></script>

<script src="js/Pruebas/demo.js"></script>

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

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="js/Pruebas/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="js/Pruebas/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="js/Pruebas/nouislider.min.js"></script>

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

</html>
