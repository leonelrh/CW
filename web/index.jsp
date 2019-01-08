<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="pe.com.coworking.models.*" %>

<%--
  Created by IntelliJ IDEA.
  User: wilme
  Date: 25/08/2018
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Workspaces</title>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="image/Logo.jpg">
    <link rel="icon" href="image/Logo.jpg">

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/material/material-kit.css?v=2.0.0">
    <!-- Documentation extras -->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="css/material/demo.css" rel="stylesheet" />
    <link href="css/material/vertical-nav.css" rel="stylesheet" />

</head>

<body class="landing-page" >

<nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" href="index.jsp"> Coworking  </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">apps</i> Nosotros
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="../index.html" class="dropdown-item">
                            <i class="material-icons">layers</i> All Components
                        </a>

                    </div>
                </li>
                <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_day</i> Servicios
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="../sections.html#headers" class="dropdown-item">
                            <i class="material-icons">dns</i> Headers
                        </a>

                    </div>
                </li>
                <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_carousel</i> Oficinas
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="../examples/about-us.html" class="dropdown-item">
                            <i class="material-icons">account_balance</i> About Us
                        </a>

                    </div>
                </li>

                <li class="nav-item">

                    <a href="login.jsp" class=" nav-link">
                        <i class="material-icons">fingerprint</i> Ingresar
                    </a>

                </li>

            </ul>
        </div>
    </div>
</nav>

<div class="header-3">

    <!-- Carousel Card -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="page-header header-filter" style="background-image: url(image/LP2.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 text-left">
                                <h1 class="title">Espacios de Trabajo</h1>
                                <h4>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades </h4>
                                <br>
                                <div class="buttons">
                                    <a href="#pablo" class="btn btn-danger btn-lg">
                                        Empezar
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="page-header header-filter" style="background-image: url(image/LP3.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 ml-auto mr-auto text-center">
                                <h1 class="title"> Espacios de Trabajo</h1>
                                <h4>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades </h4>
                                <br>
                                <h6>conectate con nosotros en:</h6>
                                <div class="buttons">
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link btn-lg">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link btn-lg">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link btn-lg">
                                        <i class="fa fa-google-plus"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="page-header header-filter" style="background-image: url(image/collab1.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7 ml-auto text-right">
                                <h1 class="title">Espacios de Trabajo</h1>
                                <h4>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades </h4>
                                <br>
                                <div class="buttons">
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-white btn-link">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-danger btn-lg">
                                        <i class="material-icons">shopping_cart</i> Empezar
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <i class="material-icons">keyboard_arrow_left</i>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <i class="material-icons">keyboard_arrow_right</i>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- End Carousel Card -->
</div>
<!--     *********    END HEADER 3      *********      -->

<div class="main" style="background-color:#f2f2f2">
    <div class="container">

        <div class="row">

            <div class="col-md-12 ml-auto mr-auto text-center">
                <h2 class="title"> CATEGORIA </h2>

                <ul class="nav nav-pills nav-pills-success">
                    <li class="nav-item">
                        <a class="nav-link " href="" data-toggle="tab"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="" data-toggle="tab"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="" data-toggle="tab"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#pill1" data-toggle="tab"> Todos </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pill2" data-toggle="tab"> Oficinas </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pill3" data-toggle="tab"> Salas  </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pill4" data-toggle="tab"> Escritorios </a>
                    </li>
                </ul>

                <div class="tab-content tab-space">
                    <div class="tab-pane active" id="pill1">

                        <div class="row">

                            <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                             <c:forEach var="office" items="${service.offices}">

                            <div class="col-lg-4 col-md-12">
                                <div class="card card-blog card-plain">
                                    <div class="card-header card-header-image">
                                        <a href="offices?action=list&id=<c:out value="${office.id}"/>" >
                                            <img class="img" src="image/${office.photo}" height="230">
                                         </a>
                                    </div>
                                    <div class="card-body ">
                                        <h6 class="card-category text-info">
                                            <i class="material-icons">trending_up</i> ${office.title}
                                        </h6>
                                        <h4 class="card-title">
                                            <a href="">${office.description}</a>
                                        </h4>
                                    </div>
                                    <div class="card-footer ">
                                        <div class="author">
                                            <a href="">
                                            <i class="material-icons">location_on</i> ${office.address}
                                             </a>
                                        </div>
                                        <div class="stats ml-auto">
                                            <i class="material-icons">attach_money</i> ${office.price}
                                        </div>
                                    </div>
                                </div>
                            </div>

                             </c:forEach>
                        </div>

                    </div>

                    <div class="tab-pane" id="pill2">
                        <div class="row">
                        <c:forEach var="office" items="${service.getOfficeByCategory(101)}">

                            <div class="col-lg-4 col-md-12">
                                <div class="card card-blog card-plain">
                                    <div class="card-header card-header-image">
                                        <a href="offices?action=list&id=<c:out value="${office.id}"/>" >
                                            <img class="img" src="image/${office.photo}" height="230">
                                        </a>
                                    </div>
                                    <div class="card-body ">
                                        <h6 class="card-category text-info">
                                            <i class="material-icons">trending_up</i> ${office.title}
                                        </h6>
                                        <h4 class="card-title">
                                            <a href="">${office.description}</a>
                                        </h4>
                                    </div>
                                    <div class="card-footer ">
                                        <div class="author">
                                            <a href="">
                                                <i class="material-icons">location_on</i> ${office.address}
                                            </a>
                                        </div>
                                        <div class="stats ml-auto">
                                            <i class="material-icons">attach_money</i> ${office.price}
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                            </div>
                    </div>
                    <div class="tab-pane" id="pill3">
                        <div class="row">
                        <c:forEach var="office" items="${service.getOfficeByCategory(102)}">

                            <div class="col-lg-4 col-md-12">
                                <div class="card card-blog card-plain">
                                    <div class="card-header card-header-image">
                                        <a href="offices?action=list&id=<c:out value="${office.id}"/>" >
                                            <img class="img" src="image/${office.photo}" height="230">
                                        </a>
                                    </div>
                                    <div class="card-body ">
                                        <h6 class="card-category text-info">
                                            <i class="material-icons">trending_up</i> ${office.title}
                                        </h6>
                                        <h4 class="card-title">
                                            <a href="">${office.description}</a>
                                        </h4>
                                    </div>
                                    <div class="card-footer ">
                                        <div class="author">
                                            <a href="">
                                                <i class="material-icons">location_on</i> ${office.address}
                                            </a>
                                        </div>
                                        <div class="stats ml-auto">
                                            <i class="material-icons">attach_money</i> ${office.price}
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                        </div>
                    </div>
                    <div class="tab-pane" id="pill4">


                        <div class="row">
                            <c:forEach var="office" items="${service.getOfficeByCategory(103)}">

                                <div class="col-lg-4 col-md-12">
                                    <div class="card card-blog card-plain">
                                        <div class="card-header card-header-image">
                                            <a href="offices?action=list&id=<c:out value="${office.id}"/>" >
                                                <img class="img" src="image/${office.photo}" height="230">
                                            </a>
                                        </div>
                                        <div class="card-body ">
                                            <h6 class="card-category text-info">
                                                <i class="material-icons">trending_up</i> ${office.title}
                                            </h6>
                                            <h4 class="card-title">
                                                <a href="">${office.description}</a>
                                            </h4>
                                        </div>
                                        <div class="card-footer ">
                                            <div class="author">
                                                <a href="">
                                                    <i class="material-icons">location_on</i> ${office.address}
                                                </a>
                                            </div>
                                            <div class="stats ml-auto">
                                                <i class="material-icons">attach_money</i> ${office.price}
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>
                        </div>
                    </div>


            </div>

        </div>

    </div>
</div>

<footer class="footer footer-white footer-big">
    <div class="container">
        <div class="content">
            <div class="row">
                <div class="col-md-4">
                    <a href="#pablo">
                        <h5>Coworking</h5>
                    </a>
                    <p> Coworking es una aplicacion web que tiene como objetivo ayudar a encontrar a las personas las mejores oficinas en su ciudad</p>
                </div>
                <div class="col-md-2">
                    <h5>Enlaces</h5>
                    <ul class="links-vertical">
                        <li>
                            <a href="#pablo">
                                Inicio
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Nosotros
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Servicios
                            </a>
                        </li>
                        <li>
                            <a href="#pablo">
                                Politica de privacidad
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5> Contactanos </h5>
                    <p>Lima Centro: Av. Arequipa 265</p>

                    <p>Phone: +51 01 976307888</p>
                    <p>Email: works.spaces@gmail.com</p>
                    <ul class="social-buttons">
                        <li>
                            <a href="#pablo" class="btn btn-just-icon btn-link btn-twitter">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#pablo" class="btn btn-just-icon btn-link btn-facebook">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                        </li>

                        <li>
                            <a href="#pablo" class="btn btn-just-icon btn-link btn-google">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#pablo" class="btn btn-just-icon btn-link btn-youtube">
                                <i class="fa fa-youtube-play"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <h5> Suscribete </h5>
                    <p>
                        Ingresa tu correo para recibir las mejores ofertas de oficina cada fin de semana ademas de otras novedades
                    </p>
                    <form class="form form-newsletter" method="" action="">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder=" Email ">
                        </div>
                        <button type="button" class="btn btn-success btn-just-icon" name="button">
                            <i class="material-icons">mail</i>
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <hr>

        <div class="copyright pull-center">
            Copyright &#xA9;
            <script>
                document.write(new Date().getFullYear())
            </script> Workspaces todos los derechos reservados.
        </div>
    </div>
</footer>
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
