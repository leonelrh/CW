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

    <title>Title</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!--     Fonts and icons     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

    <!-- CSS Files -->
    <link href="css/bootstrap4.min.css" rel="stylesheet" />
    <link href="css/gsdk-bootstrap-wizard.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="css/demo4.css" rel="stylesheet" />

    <link href="css/paper-dashboard.css" rel="stylesheet"/>
    <link href="css/themify-icons.css" rel="stylesheet">

</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-color="black" >

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
                <li class="active">
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
                <li>
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
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
                                <p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">5</p>
                                <p>Notifications</p>
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
                                <p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


<div class="image-container set-full-height" style="background-image: url('image/wizard-city.jpg')">


        <div class="row" >

            <div class="col-sm-8 col-sm-offset-2">


                <div class="wizard-container">
                    <div class="card wizard-card" data-color="green" id="wizard">
                        <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                        <form action="offices" method="post">

                            <!--        You can switch ' data-color="green" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                            <div class="wizard-header">
                                <h3>
                                    <b>Registre </b> su Lugar <br>
                                    <small>  </small>
                                </h3>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#location" data-toggle="tab"> Locacion </a></li>
                                    <li><a href="#type" data-toggle="tab"> Categoria </a></li>
                                    <li><a href="#facilities" data-toggle="tab"> Servicios </a></li>
                                    <li><a href="#description" data-toggle="tab"> Descripcion </a></li>
                                </ul>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane" id="location">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text"> Comencemos con los detalles básicos</h4>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Titulo</label>
                                                <input type="hidden"  name="id" id="exampleInputEmail1" value="${office.id}">
                                                <input type="text" class="form-control" name="title" id="exampleInputEmail1" value="${office.title}">
                                            </div>
                                        </div>
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Direccion </label>
                                                <input type="text" class="form-control" name="address" value="${office.address}">
                                            </div>
                                        </div>



                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Pais </label>
                                                <select name="country_name" class="form-control" id="mySelect" onchange="myFunction(this)">
                                                    <option disabled="" selected=""> </option>
                                                    <c:forEach var="country" items="${service.countries}">
                                                    <option value="${country.id}">${country.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>

                                        <p id="demo"></p>



                                        <script>
                                            function myFunction(selectObject) {

                                                var x=selectObject.value
                                                document.getElementById("demo").innerHTML =  x;

                                                <%int b=0;%>=x;
                                            }
                                        </script>



                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label> City </label><br>
                                                <select name="city_id" class="form-control" >
                                                    <option disabled="" selected=""> </option>
                                                    <c:forEach var="city" items="<%=service.getCities(a)%>">
                                                    <option value="${city.id}"> ${city.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Limite </label>
                                                <select class="form-control" name="capacity" >
                                                    <option disabled="" selected=""> </option>
                                                    <option value="1">1 persona</option>
                                                    <option value="2">2 personas</option>
                                                    <option value="3">3 personas</option>
                                                    <option value="4">4 personas</option>
                                                    <option value="5">5 personas</option>
                                                    <option value="6">6 Personas</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Precio </label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" name="price" value="${office.price}" }>
                                                    <span class="input-group-addon">$</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="type">
                                    <div class="row">
                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="col-sm-4 col-sm-offset-2">
                                                <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="">
                                                    <input type="radio" name="categories_id" value="101" >
                                                    <div class="icon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <h6>Oficina </h6>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="">
                                                    <input type="radio" name="categories_id" value="102">
                                                    <div class="icon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <h6>Escritorio</h6>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="">
                                                    <input type="radio" name="categories_id" value="103">
                                                    <div class="icon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <h6>Hot desk</h6>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="">
                                                    <input type="radio" name="categories_id" value="104">
                                                    <div class="icon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <h6>Sala Reuniones</h6>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="">
                                                    <input type="radio" name="categories_id" value="105">
                                                    <div class="icon">
                                                        <i class="fa fa-building"></i>
                                                    </div>
                                                    <h6>Sala conferencia </h6>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="facilities">
                                    <h4 class="info-text"> Servicios que cuenta el lugar </h4>
                                    <div class="row">
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Wifi </label>
                                                <select class="form-control">
                                                    <option disabled="" selected="">- response -</option>
                                                    <option> Si </option>
                                                    <option> No </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label> Telefono </label>
                                                <select class="form-control">
                                                    <option disabled="" selected="">- respuesta -</option>
                                                    <option> Si </option>
                                                    <option> No </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Aire acondicionado </label>
                                                <select class="form-control">
                                                    <option disabled="" selected="">- respuesta -</option>
                                                    <option> Si </option>
                                                    <option> No </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label> Aparcamiento </label>
                                                <select class="form-control">
                                                    <option disabled="" selected="">- respuesta -</option>
                                                    <option> Si </option>
                                                    <option> No </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Impresora </label>
                                                <select class="form-control">
                                                    <option disabled="" selected="">- respuesta -</option>
                                                    <option> Si </option>
                                                    <option> No </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label> Adicional </label>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Servicio adicional ">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane" id="description">
                                    <div class="row">
                                        <h4 class="info-text"> Escribe una pequeña descripción. </h4>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Estado </label>
                                                <input type="text" name="state" class="form-control" id="exampleInputEmail1" value="${office.state}">
                                            </div>
                                        </div>
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="form-group">
                                                <label> Foto </label>
                                                <input type="text" name="photo" class="form-control" id="exampleInputEmail1" value="${office.photo}">
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Descripción del lugar </label>
                                                <textarea class="form-control" name="descripcion" placeholder="" rows="9">${office.description}

                                            </textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Ejemplo </label>
                                                <p class="description">"Es un lugar que está ubicado en el centro financiero y con varias vías de acceso"</p>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Phono </label>
                                                <input type="text" class="form-control" name="phone" id="exampleInputEmail1" value="${office.phone}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-success btn-wd btn-sm' name='next' value='Siguiente' />

                                    <div class="text-center">
                                        <input type="hidden" value="${action == 'edit' ? "update" : "agregate"}" name="action"/>
                                    <button type='submit' class='btn btn-finish btn-fill btn-success btn-wd btn-sm' name='finish' value="Ingresar">${action == 'edit' ? "Actualizar" : "Registrar"}</button>
                                    </div>

                                </div>
                                <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Anterior' />
                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div> <!-- row -->

</div>

    </div>
</div>

</body>

<script src="js/jquery4-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap4.min.js" type="text/javascript"></script>
<script src="js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
<script src="js/gsdk-bootstrap-wizard.js"></script>
<script src="js/jquery.validate4.min.js"></script>

<script src="js/paper-dashboard.js"></script>
</html>