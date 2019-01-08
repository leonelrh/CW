<%@ page import="pe.com.coworking.models.*" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <style>
        /* Always set the map height explicitly to define the size of the div
         * element that contains the map. */
        #map {
            height: 50%;
            width: 85%;
        }
        /* Optional: Makes the sample page fill the window. */

    </style>



    <!-- Datetimepicker -->
    <link href="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
    <script src="https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>



</head>
<body>

<div id="fb-root"></div>

<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.1&appId=1851028854948302&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<nav class="navbar navbar-default navbar-expand-lg" role="navigation-demo">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->

        <div class="navbar-translate">
            <a class="navbar-brand" href="index.jsp"> Workspaces </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">
                        <i class="material-icons">apps</i>  Nosotros
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">
                        <i class="material-icons">view_day</i>   Servicios
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#pablo" class="nav-link">
                        <i class="material-icons">view_carousel</i> Oficinas
                    </a>
                </li>

                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">
                        <i class="material-icons">fingerprint</i> Iniciar
                    </a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-->
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <% Office office = (Office)request.getAttribute("office");
                int var=office.getId();
            %>

            <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

            <hr>

            <c:forEach var="office" items="<%=service.getOfficesById(var)%>">

                <img class="img-fluid rounded" src="image/${office.photo}" >

            </c:forEach>

            <hr>
            <h3 class="title"><%=office.getTitle()%> </h3>

            <p></p>

            <p>
                oficinas prime estos complejos  cuentan con los más
                altos estándares internacionales de diseño además de una propuesta inmobiliaria integral, moderna,
                eficiente, segura y sostenible con el medio ambiente que comprende el arrendamiento de oficinas,
                locales comerciales y estacionamientos.cuenta además con un servicio de administración de inmuebles enfocado en cliente</p>

            <table class="table table-borderless">
                <thead>
                <tr class="title">
                    <th> Servicios </th>
                    <th></th>
                    <th></th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><i class="fa fa-laptop"></i> Soporte Tecnico</td>
                    <td><i class="fa fa-car"></i> Estacionamiento</td>
                    <td><i class="fa fa-wifi"></i> Wireless</td>
                </tr>
                <tr>
                    <td><i class="fa fa-print"></i> Impresora</td>
                    <td><i class="fa fa-adjust"></i> Aire acondicionado</td>
                    <td><i class="fa fa-phone"></i> Telefono</td>
                </tr>
                <tr>
                    <td> Cafeteria </td>
                    <td> Sala </td>
                    <td> Recepcion </td>
                </tr>

                </tbody>
            </table>

            <p>

            </p>

            <hr>

            <div id="map"></div>

            <p>

            </p>

            <script>

                function initMap() {
                    var myLatLng = {<%=office.getCoordinates()%>};

                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 15,
                        center: myLatLng
                    });

                    var marker = new google.maps.Marker({
                        position: myLatLng,
                        map: map,
                        title: 'Hello World!'
                    });
                }
            </script>
            <script async defer
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBy4gVM0fepX3gcLqbCNFVSA0FClebjIkI&callback=initMap">
            </script>

            <div class="fb-comments" data-href="http://localhost:8080/CW_war_exploded/offices?action=list&id=<%=office.getId()%>" data-numposts="4"></div>

            <p></p>

        </div>

        <!-- Sidebar Widgets Column       cards and utilities -->
        <div class="col-md-4" >

            <div class="sticky-top" >

                <hr>

                <div class="card" >
                    <div class="card-body">
                        <h4>S/.<%=office.getPrice()%> por dia </h4>
                        <hr>

                        <form action="reservations" method="post">


                        <%--    <div class="form-group">
                                <label class="label-control">Datetime Picker</label>
                                <input type="text" class="form-control datetimepicker" value="10/05/2016">
                            </div>--%>

                        <%--    <div class="form-group">
                                <label class="label-control"> Fecha Inicio </label>
                                <div class="input-group date" id="">
                                    <input type="text" class="form-control datepicker" name="starDate">
                                </div>
                            </div>--%>

                        <%--    <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker5').datetimepicker({
                                        defaultDate: "11/1/2013",
                                        disabledDates: [
                                            moment("12/25/2013"),
                                            new Date(2013, 11 - 1, 21),
                                            "11/22/2013 00:53"
                                        ]
                                    });
                                });
                            </script>--%>

                          <%--  <div class="form-group">
                                <label class="label-control"> Fecha Fin </label>
                            <div class="input-group date" id="datetimepicker4">
                                <input type="text" class="form-control datepicker" name="enddate">
                            </div>
                            </div>--%>


                            <div class="form-group">
                                <label class="label-control"> Fecha Inicio </label>
                                <div class='input-group date' id='datetimepicker4'>
                                    <input type='text' class="form-control " />
                                    <span class="input-group-addon">
                                    <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker4').datetimepicker({
                                        defaultDate: "11/1/2018",
                                        disabledDates: [
                                            moment("12/25/2018"),
                                            new Date(2018, 11 - 1, 21),
                                            "11/22/2018 00:53"
                                        ]
                                    });
                                });
                            </script>

                            <div class="form-group">
                                <label class="label-control"> Fecha Fin </label>
                                <div class='input-group date' id='datetimepicker5'>
                                    <input type='text' class="form-control " />
                                    <span class="input-group-addon">
                                    <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <script type="text/javascript">
                                $(function () {
                                    $('#datetimepicker5').datetimepicker({
                                        defaultDate: "11/1/2018",
                                        disabledDates: [
                                            moment("12/25/2018"),
                                            new Date(2018, 11 - 1, 21),
                                            "11/22/2018 00:53"
                                        ]
                                    });
                                });
                            </script>


                            <p></p>

                            <label> Cantidad </label>
                            <select class="selectpicker" data-style="select-with-transition" title="Seleccione" data-size="7" name="np">
                                <option value="1"> 1 Persona </option>
                                <option value="2"> 2 Personas </option>
                                <option value="3"> 3 Personas </option>
                                <option value="4"> 4 Personas </option>
                            </select>

                            <p></p>

                            <div>
                                <input type="hidden" value="agregate" name="action" />
                                <button type="submit" class="btn btn-outline-success btn-lg btn-block"
                                <%-- data-toggle="modal" data-target="#noticeModal"--%> >Reservar</button>
                            </div>

                        </form>

                        <button type="button" class="btn btn-outline-secondary btn-lg btn-block ">Agregar Calendario</button>

                    </div>
                </div>

                <%--   <div class="shadow-sm p-4 mb-4 bg-white">Small shadow</div>--%>

            </div>

        </div>

    </div>
    <!-- /.row -->

</div>

<div class="modal fade" id="noticeModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-notice" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Información</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i class="material-icons">clear</i>
                </button>
            </div>
            <div class="modal-body">
                <div class="instruction">
                    <div class="row">
                        <div class="col-md-8 container">
                            <img src="image/<%=office.getId()%>.jpg" alt="Thumbnail Image" class="rounded img-fluid">
                        </div>

                    </div>
                </div>
                <div class="instruction">
                    <div class="row">
                        <div class="col-md-6">
                            <strong>Oficina</strong>
                            <p>Precio: <%=office.getPrice()%><br>
                                Contacto: <%=office.getPhone()%><br>
                                Direccion: <%=office.getAddress()%><br>
                                Estado: <%=office.getState()%><br>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <strong> Reserva </strong>
                            <p> Fecha Inicio: <br>
                                Fecha Fin: <br>
                                Capacidad: <br>
                                Total: <br>
                            </p>
                        </div>
                    </div>
                </div>
                <p>Si tiene más preguntas, no dude en contactarnos  </p>
            </div>
            <div class="modal-footer text-center">
                <button type="button" class="btn btn-success btn-round" data-dismiss="modal">Reservar</button>
            </div>
        </div>
    </div>
</div>

<!-- /.container -->

<!-- Footer -->
<footer class="footer footer-white footer">
    <div class="container">
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


<%--

.JS DEL MATERIAL KIT PRO
<script src="js/materials/material-kit.js?v=2.0.0"></script>

--%>


<!-- Fixed Sidebar Nav - js With initialisations For Demo Purpose, Don't Include it in your project -->
<script src="js/materials/material-kit-demo.js"></script>
<!-- Plugins for presentation and navigation  -->
<script src="js/materials/modernizr.js"></script>
<script src="js/materials/vertical-nav.js"></script>
<!--  Google Maps Plugin    -->

<script>
    $(document).ready(function() {
        materialKitDemo.initFormExtendedDatetimepickers();
        // Sliders for demo purpose in refine cards section
        var slider = document.getElementById('sliderRegular');

        noUiSlider.create(slider, {
            start: 40,
            connect: [true, false],
            range: {
                min: 0,
                max: 100
            }
        });

        var slider2 = document.getElementById('sliderDouble');

        noUiSlider.create(slider2, {
            start: [20, 60],
            connect: true,
            range: {
                min: 0,
                max: 100
            }
        });
    });
</script>

</body>
</html>