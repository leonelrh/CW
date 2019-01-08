<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 01/05/2018
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

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


    <style>
        /* Set the size of the div element that contains the map */
        #map {
            height: 250px;  /* The height is 400 pixels */
            width: 100%;  /* The width is the width of the web page */
        }
       /* #coords{
            width: 20px;
        }*/
    </style>

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

                <li class="active">
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

    <!--   data-background-color="black" data-image="../../assets/img/sidebar-1.jpg"  -->
    <div class="main-panel " style="background-image: url('image/card-3.jpeg'); "   >
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
                    <a class="navbar-brand" href="#"> Registrar </a>
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
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="green" id="wizardProfile">
                            <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                            <form class="form" action="offices" method="post" enctype="multipart/form-data">

                                <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                                <div class="wizard-header">
                                    <h3 class="wizard-title">
                                        Registre su oficina
                                    </h3>
                                    <h5> Esta informacion permitira conocer al cliente mas sobre su oficina </h5>
                                </div>
                                <div class="wizard-navigation">
                                    <ul>
                                        <li>
                                            <a href="#descripcion" data-toggle="tab">Descripcion</a>
                                        </li>
                                        <li>
                                            <a href="#locacion" data-toggle="tab">Locacion</a>
                                        </li>
                                        <li>
                                            <a href="#informacion" data-toggle="tab">Informacion</a>
                                        </li>
                                        <li>
                                            <a href="#servicios" data-toggle="tab">Servicios</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane" id="descripcion">
                                        <div class="row">
                                            <h4 class="info-text"> Comencemos con lo mas esencial de la informacion </h4>


                                            <div class="col-sm-5 col-sm-offset-1">
                                                <legend> Imagen </legend>
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail">
                                                        <img src="image/image_placeholder.jpg" >
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail"></div>
                                                    <div>
                                                    <span class="btn btn-success btn-round btn-file">
                                                        <span class="fileinput-new"> Selecciona </span>
                                                        <span class="fileinput-exists"> Cambiar </span>
                                                        <input type="file" name="file" />
                                                    </span>
                                                        <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Eliminar </a>
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="col-sm-5">


                                                <div class="form-group">
                                                    <label>Descripcion </label>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> Escribe algo importante de manera que el cliente muestre interes</label>
                                                        <input type="hidden"  name="id" id="exampleInputEmail1" value="${office.id}">
                                                        <textarea name="description" class="form-control" rows="8" >${office.description}</textarea>
                                                    </div>
                                                </div>


                                            </div>

                                        </div>
                                    </div>

                                    <div class="tab-pane" id="locacion">

                                        <div class="row">

                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"> Direccion </label>
                                                    <input type="text" class="form-control" name="address" value="${office.address}">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"> Ciudad </label>
                                                    <select name="cityId" class="form-control">
                                                        <option disabled="" selected=""></option>
                                                        <c:forEach var="city" items="${service.city}">
                                                            <option value="${city.id}">${city.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-sm-10 col-sm-offset-1">

                                                <div id="map"></div>

                                                <input type="text" id="coords" name="coordinates" >
                                                <script>

                                                    var marker;
                                                    var coords = {};

                                                    initMap = function ()
                                                    {

                                                        navigator.geolocation.getCurrentPosition(
                                                            function (position){
                                                                coords =  {
                                                                    lng: position.coords.longitude,
                                                                    lat: position.coords.latitude
                                                                };
                                                                setMapa(coords);


                                                            },function(error){console.log(error);});

                                                    }

                                                    function setMapa (coords)
                                                    {

                                                        var map = new google.maps.Map(document.getElementById('map'),
                                                            {
                                                                zoom: 15,
                                                                center:new google.maps.LatLng(coords.lat,coords.lng),

                                                            });

                                                        marker = new google.maps.Marker({
                                                            map: map,
                                                            draggable: true,
                                                            animation: google.maps.Animation.DROP,
                                                            position: new google.maps.LatLng(coords.lat,coords.lng),

                                                        });

                                                        marker.addListener('click', toggleBounce);

                                                        marker.addListener( 'dragend', function (event)
                                                        {
                                                            document.getElementById("coords").value = "lat: "+ this.getPosition().lat()+", lng: "+ this.getPosition().lng();
                                                        });
                                                    }

                                                    function toggleBounce() {
                                                        if (marker.getAnimation() !== null) {
                                                            marker.setAnimation(null);
                                                        } else {
                                                            marker.setAnimation(google.maps.Animation.BOUNCE);
                                                        }
                                                    }
                                                </script>
                                                <script async defer
                                                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBy4gVM0fepX3gcLqbCNFVSA0FClebjIkI&callback=initMap">
                                                </script>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="tab-pane" id="informacion">

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text"> Escribe los etalles sobre la oficina  </h4>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"> Titulo </label>
                                                    <input type="text" class="form-control" name="title" value="${office.title}">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Categoria</label>
                                                    <select name="categoryId" class="form-control">
                                                        <option disabled="" selected=""> </option>
                                                        <c:forEach var="category" items="${service.categories}">
                                                            <option value="${category.id}">${category.categoryName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Estado</label>
                                                    <input type="text" class="form-control" name="state" value="${office.state}">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Limite</label>
                                                    <select name="capacity" class="form-control">
                                                        <option hidden selected="" value="${office.capacity}">${office.capacity}</option>
                                                        <option value="1"> 1 Persona </option>
                                                        <option value="2"> 2 Personas </option>
                                                        <option value="3"> 3 Personas </option>
                                                        <option value="4"> 4 Personas  </option>
                                                        <option value="5"> 5 Personas  </option>
                                                        <option value="6"> 6 Personas </option>
                                                        <option value="7"> 7 Personas  </option>
                                                        <option value="8"> 8 Personas  </option>
                                                        <option value="9"> 9 Personas </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"> Contacto </label>
                                                    <input type="text" class="form-control" name="phone" value="${office.phone}">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label"> Precio </label>
                                                    <input type="text" class="form-control" name="price" value="${office.price}">
                                                </div>
                                            </div>

                                        </div>

                                    </div>


                                    <div class="tab-pane" id="servicios">

                                        <div class="row">
                                            <div class="col-lg-10 col-lg-offset-1">
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="estacionamiento">
                                                        <div class="icon">
                                                            <i class="fa fa-car"></i>
                                                        </div>
                                                        <h6> Estacionamiento </h6>
                                                    </div>
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="wireless">
                                                        <div class="icon">
                                                            <i class="fa fa-wifi"></i>
                                                        </div>
                                                        <h6> Wireless </h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="impresoras">
                                                        <div class="icon">
                                                            <i class="fa fa-print"></i>
                                                        </div>
                                                        <h6> Impresoras </h6>
                                                    </div>
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="aireacondicionado">
                                                        <div class="icon">
                                                            <i class="fa fa-adjust"></i>
                                                        </div>
                                                        <h6> Aire Acondicionado </h6>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value="Soporte">
                                                        <div class="icon">
                                                            <i class="fa fa-laptop"></i>
                                                        </div>
                                                        <h6> Soporte Tecnico </h6>
                                                    </div>
                                                    <div class="choice" data-toggle="wizard-checkbox">
                                                        <input type="checkbox" name="jobb" value=" Telefono ">
                                                        <div class="icon">
                                                            <i class="fa fa-phone"></i>
                                                        </div>
                                                        <h6> Telefono </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-success btn-wd' name='next' value='Siguiente' />

                                        <div>
                                            <input type="hidden" value="${action == 'edit' ? "update" : "agregate"}" name="action" />
                                        <button type='submit' class='btn btn-finish btn-fill btn-success btn-wd' name='finish' value="Ingresar">${action == 'edit' ? "Actualizar" : "Registrar"}
                                        </button>
                                        </div>
                                    </div>
                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Anterior' />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- wizard container -->
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                INICIO
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                NOSOTROS
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                OFICINAS
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                SERVICIOS
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

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBy4gVM0fepX3gcLqbCNFVSA0FClebjIkI"></script>

<script src="js/Pruebas/material-dashboard.js?v=1.2.1"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="js/Pruebas/demo.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
        demo.initMaterialWizard();
        setTimeout(function() {
            $('.card.wizard-card').addClass('active');
        }, 600);
    });
</script>


</html>