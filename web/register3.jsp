<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 28/04/2018
  Time: 21:28
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

<body class="signup-page ">

<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<nav class="navbar  navbar-transparent    navbar-absolute  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
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
                <li class=" nav-item">
                    <a href="#" class=" nav-link" data-toggle="dropdown">
                        <i class="material-icons">apps</i> Nosotros
                    </a>

                </li>
                <li class=" nav-item">
                    <a href="#" class="nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_day</i> Servicios
                    </a>

                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_carousel</i> Oficinas
                    </a>

                </li>
                <li class=" nav-item">
                    <a href="login.jsp" class=" nav-link">
                        <i class="material-icons">fingerprint</i> Ingresar
                    </a>

                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="page-header header-filter"  style="background-image: url(image/LP4.jpg); background-size: cover; background-position: top center;">
    <div class="container">
        <div class="row">

            <div class="col-md-5">
                <h1 class="title"> Workspaces. </h1>
                <h4> Espacio de trabajo bellamente diseñado creado para facilitar nuevas conexiones y que se adaptan a todas sus necesidades.
                </h4>
                <br>
                <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank" class="btn btn-danger btn-lg">
                    <i class="fa fa-ticket"></i> Ver Oficinas
                </a>
                <p></p>
                <div class="iframe-container">
                    <iframe height="250" src="https://www.youtube.com/embed/mFq1TveYvn8" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                </div>

            </div>

            <div class="col-md-5 ml-auto ">
                <div class="card card-signup">
                    <h2 class="card-title text-center">Registrar</h2>
                    <div class="card-body">

                        <form class="form" action="users" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">face</i>
                                                </span>
                                    <input type="text" class="form-control" placeholder=" Nombre " name="firstName">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">face</i>
                                                </span>
                                    <input type="text" class="form-control" placeholder=" Apellidos " name="lastName">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">email</i>
                                                </span>
                                    <input type="text" class="form-control" placeholder="Correo electronico" name="email" >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                    <input type="password" placeholder=" Contraseña " class="form-control" name="password" />
                                </div>
                            </div>

                            <div class="text-center">
                                <input type="hidden" value="${action == 'edit' ? "update" : "agregate"}" name="action" />
                                <button type="submit" class="btn btn-success btn-round" value="Ingresar">${action == 'edit' ? "Actualizar" : "Registrar"}</button>
                            </div>

                        </form>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <footer class="footer ">
        <div class="container">
            <nav class="pull-left">
                <ul>
                    <li>
                        <a href="https://www.creative-tim.com">
                            Workspaces
                        </a>
                    </li>
                    <li>
                        <a href="http://presentation.creative-tim.com">
                            Nosotros
                        </a>
                    </li>
                    <li>
                        <a href="http://blog.creative-tim.com">
                            Inicio
                        </a>
                    </li>

                </ul>
            </nav>
            <div class="copyright pull-right">
                &copy;
                <script>
                    document.write(new Date().getFullYear())
                </script> Diseñado por
                <a href="https://www.creative-tim.com" target="_blank">Workspaces</a>
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
