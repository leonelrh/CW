<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 16/04/2018
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="image/Logo.jpg">
    <link rel="icon" href="image/Logo.jpg">
    <title>
        Workspaces
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/material/material-kit.css?v=2.0.0">
    <!-- Documentation extras -->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="css/material/demo.css" rel="stylesheet" />
    <link href="css/material/vertical-nav.css" rel="stylesheet" />

</head>

<body class="login-page">

<nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" href="index.jsp"> Coworking </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="dropdown nav-item">
                    <a href="#" class="nav-link" data-toggle="dropdown">
                        <i class="material-icons">apps</i> Nosotros
                    </a>
                </li>

                <li class="dropdown nav-item">
                    <a href="#" class=" nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_day</i> Servicios
                    </a>

                </li>
                <li class="dropdown nav-item">
                    <a href="#" class="nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_carousel</i> Oficinas
                    </a>

                </li>
                <li class=" nav-item">
                    <a href="register3.jsp" class="nav-link" >
                        <i class="material-icons">person_add</i> Registrar
                    </a>

                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="page-header header-filter" style="background-image: url(image/b1.jpg); background-size: cover; background-position: top center;">



    <%
        if (request.getAttribute("msg")=="Success") {
    %>

    <div class="alert alert-success">
        <div class="container">
            <div class="alert-icon">
                <i class="material-icons">check</i>
            </div>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true"><i class="material-icons">clear</i></span>
            </button>
            <b>Success </b> Register
        </div>
    </div>

    <%
        } else if (request.getAttribute("msg")=="Error"){
    %>

    <div class="alert alert-danger">
        <div class="container">
            <div class="alert-icon">
                <i class="material-icons">error_outline</i>
            </div>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true"><i class="material-icons">clear</i></span>
            </button>
            <b>Error </b> Register
        </div>
    </div>

    <%
        } else {

        }
    %>


    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                <div class="card card-signup">
                    <form class="form" method="post" action="login">
                        <div class="card-header  text-center ">
                            <h4 class="card-title">Iniciar sesion</h4>
                            <h4 class="card-title"> workspaces </h4>
                        </div>
                        <b class="description text-center">.</b>
                        <div class="card-body">

                            <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">email</i>
                                    </span>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email...">
                            </div>
                            <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock_outline</i>
                                    </span>
                                <input type="password" class="form-control" placeholder="Password..." id="pwd" name="password">
                            </div>

                        </div>
                        <b class="description text-center">.</b>

                        <div class="footer text-center">
                            <button class="btn btn-success btn-round btn-wd btn-lg" type="submit" value="Ingresar" >Ingresar</button>
                        </div>
                        <b class="description text-center">.</b>

                        <div class="form-row">
                            <div class="col">
                                <p class="description text-center"><a href="register3.jsp">Registrar</a></p>
                            </div>
                            <div class="col">
                                <p class="description text-center"><a href="">Follward</a></p>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <nav class="float-left">
                <ul>
                    <li>
                        <a href="http://www.creative-tim.com">
                            Workspaces
                        </a>
                    </li>
                    <li>
                        <a href="http://presentation.creative-tim.com">
                            Servicios
                        </a>
                    </li>
                    <li>
                        <a href="http://blog.creative-tim.com">
                            Inicio
                        </a>
                    </li>

                </ul>
            </nav>
            <div class="copyright float-right">
                &#xA9;
                <script>
                    document.write(new Date().getFullYear())
                </script>, Diseñado   por
                <a href="http://www.creative-tim.com" target="_blank">Coworking</a>
            </div>
        </div>
    </footer>
</div>
<!--   Core JS Files   -->
<script src="js/materials/jquery.min.js"></script>
<script src="js/materials/popper.min.js"></script>
<script src="js/materials/bootstrap-material-design.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="js/materials/moment.min.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="js/materials/bootstrap-selectpicker.js"></script>
<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
<script src="js/materials/bootstrap-tagsinput.js"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="js/materials/jasny-bootstrap.min.js"></script>
<!--	Plugin for Small Gallery in Product Page -->
<script src="js/materials/jquery.flexisel.js"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script src="js/materials/bootstrap-datetimepicker.min.js"></script>
<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="js/materials/nouislider.min.js"></script>
<!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
<script src="js/materials/material-kit.js?v=2.0.0"></script>
<!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
<script src="js/materials/material-kit-demo.js"></script>
<!-- Plugins for presentation and navigation  -->
<script src="js/materials/modernizr.js"></script>
<script src="js/materials/vertical-nav.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
</body>

</html>