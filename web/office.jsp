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
            width: 50%;
        }
        /* Optional: Makes the sample page fill the window. */


    </style>

</head>
<body backgro>


<nav class="navbar navbar-default navbar-expand-lg" role="navigation-demo">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-translate">
            <a class="navbar-brand" href="/presentation.html"> Workspaces </a>
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
                    <a href="#pablo" class="nav-link">
                        <i class="material-icons">fingerprint</i> Iniciar
                    </a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-->
</nav>



<div class="container" style="margin-top:40px">


    <div class="row">

        <div class="col-sm-8">
            <% Office office = (Office)request.getAttribute("office");
                int var=office.getId();
            %>

               <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                 <c:forEach var="office" items="<%=service.getOfficesById(var)%>">

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="image/${office.id}.jpg" >
                     <p></p>

            <p> INFORMACION DE LA OFICINA </p>

                <p> Title : ${office.title}</p>
                <p> Descripcion: ${office.description}</p>
                <p> Capacidad : ${office.capacity}</p>
                <p> Direccion : ${office.address}</p>
                <p> Precio :  ${office.price}</p>
                <p> Phone : ${office.phone}</p>

            </c:forEach>



            <p>

            </p>
            <hr>

            <p> SERVICIOS </p>



                <% String variable = "1001"; %>
                <%String ide=(String)request.getSession().getAttribute("uowner");%>
                <c:forEach var="servic" items="<%=service.getServicesByOffice(variable)%>">
                    <div class="col-md-4">

                                <table class="table">
                                <td>${servic.namService}</td>
                                <td>${servic.description}</td>
                                </table>

                    </div>
                </c:forEach>


            <hr>


            <p> COMENTARIOS  </p>

            <!-- Comments Form -->
            <div class="card my-4">
                <h5 class="card-header">Escribe un comentario</h5>
                <div class="card-body">

                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>

                </div>
            </div>

            <!-- Single Comment -->
            <div class="media mb-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0">Julio</h5>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
            </div>

            <!-- Comment with nested comments -->
            <div class="media mb-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0">Alessandra</h5>
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

                    <div class="media mt-4">
                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                        <div class="media-body">
                            <h5 class="mt-0">Alex </h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        </div>
                    </div>

                    <div class="media mt-4">
                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                        <div class="media-body">
                            <h5 class="mt-0"> Juan </h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <!-- Sidebar Widgets Column -->

        <div class="col-sm-4">
          <%--  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">--%>

              <form action="reservations" method="post">
            <div class="card my-4  h-100" >
                <h5 class="card-header"> Detalle Reserva </h5>
                <div class="card-body ">


                    Precio: S/ <%=office.getPrice()%> /dia <p></p>

                    Evaluacion: 4/5 <p></p>


                    Fecha Inicio.

                                <div id="datetimepicker4" class="input-append">
                                    <input data-format="yyyy-MM-dd" type="text"/>
                                    <span class="add-on">

                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
                                </div>
                                <script type="text/javascript">
                                    $(function() {
                                        $('#datetimepicker4').datetimepicker({
                                            pickTime: false
                                        });
                                    });
                                </script>

                    Fecha End.


                    <div id="datetimepicker5" class="input-append">
                        <input data-format="yyyy-MM-dd" type="text"/>
                        <span class="add-on">
                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
                    </div>
                    <script type="text/javascript">
                        $(function() {
                            $('#datetimepicker5').datetimepicker({
                                pickTime: false
                            });
                        });
                    </script>

                    N° Personas<p></p>
                    <select name="num">
                        <c:forEach var = "i" begin = "1" end = "5">
                            <option value="${i}">${i}</option>
                            <c:out value = "${i}"/>
                        </c:forEach>
                    </select>


                    <%  Office office1=service.getOfficeById(var);%>

                    <div class="input-group">
                        <span class="input-group-btn">
                  <button class="btn btn-info btn-lg" type="button" data-toggle="modal" data-target="#<%=office1.getId()%>"> RESERVAR AHORA </button>
                </span>
                    </div><p></p>

                    <div class="modal fade" id="<%=office1.getId()%>" role="dialog">
                        <div class="modal-dialog">

                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><%=office1.getTitle()%></h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                </div>
                                <div class="modal-body">

                                </div>
                                <div class="modal-footer">
                                    <input type="hidden" value="${"agregate"}" name="action"/>
                                    <button type='submit' class='btn btn-success' name='finish' value="Ingresar">Registrar</button>
                                </div>

                            </div>

                        </div>
                    </div>

                    <script type="text/javascript">(function () {
                        if (window.addtocalendar)if(typeof window.addtocalendar.start == "function")return;
                        if (window.ifaddtocalendar == undefined) { window.ifaddtocalendar = 1;
                            var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                            s.type = 'text/javascript';s.charset = 'UTF-8';s.async = true;
                            s.src = ('https:' == window.location.protocol ? 'https' : 'http')+'://addtocalendar.com/atc/1.5/atc.min.js';
                            var h = d[g]('body')[0];h.appendChild(s); }})();
                    </script>

                    <!-- 3. Place event data -->
                    <span class="addtocalendar atc-style-blue">
        <var class="atc_event">
            <var class="atc_date_start">2014-05-04 12:00:00</var>
            <var class="atc_date_end">2014-05-04 18:00:00</var>
            <var class="atc_timezone">Europe/London</var>
            <var class="atc_title">Star Wars Day Party</var>
            <var class="atc_description">May the force be with you</var>
            <var class="atc_location">Tatooine</var>
            <var class="atc_organizer">Luke Skywalker</var>
            <var class="atc_organizer_email">luke@starwars.com</var>
        </var>
    </span>

                </div>

            </div>
              </form>

        </div>


            <div id="map"></div>
            <script>


                function initMap() {
                    var myLatLng = {lat: -12.090724, lng: -77.022665};

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
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDbNormGFRvtGsc9l3W1SGP9tGkjAZI4Js&callback=initMap">
            </script>

        <p></p>

    </div>

    </div>
    <!-- /.row -->

<!-- /.container -->

<!-- Footer -->
<footer id="footer">


    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong> CoWorking </strong>. Todos los derechos reservados
        </div>
    </div>
</footer><!-- #footer -->

<!-- JavaScript Libraries -->
<script src="js/ladingpage/jquery.min.js"></script>
<script src="js/ladingpage/bootstrap.bundle.min.js"></script>
<script src="js/ladingpage/superfish.min.js"></script>
<script src="js/ladingpage/wow.min.js"></script>
<script src="js/ladingpage/waypoints.min.js"></script>
<script src="js/ladingpage/counterup.min.js"></script>
<script src="js/ladingpage/isotope.pkgd.min.js"></script>
<script src="js/ladingpage/jquery.touchSwipe.min.js"></script>

<!-- Template Main Javascript File -->

<script src="js/ladingpage/main.js"></script>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

</body>
</html>
