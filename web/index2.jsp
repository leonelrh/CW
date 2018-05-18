<%@ page import="pe.com.coworking.models.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 19/04/2018
  Time: 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title> CoWorking </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="css/bootstrap3.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="css/demo3.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="css/themify-icons.css" rel="stylesheet">

</head>
<body>


<div class="wrapper">
    <div class="sidebar" data-background-color="black" data-color="black" >

        <!--
            Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
            Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
        -->

        <div class="sidebar-wrapper" >
            <div class="logo">
                <a href="index.jsp" class="simple-text">
                    CoWorking
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="index2.jsp">
                        <i class="ti-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li >
                    <a href=" prueba3.jsp">
                        <i class="ti-panel"></i>
                        <p> Registrar Oficina </p>
                    </a>
                </li>
                <li>
                    <a href="prueba4.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p> Oficinas </p>
                    </a>
                </li>
                <li>
                    <a href="prueba5.jsp">
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
                    <a class="navbar-brand" href="index2.jsp">User Profile</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">5</p>
                                <p> Notificaciones </p>
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
                                <p> Configuracion </p>
                            </a>
                        </li>
                        <li>
                            <a href="login.jsp" class="dropdown-toggle" >
                                <i class="ti-panel"></i>
                                <p>Cerrar Sesion</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="image/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <img class="avatar border-white" src="image/face-3.jpg" alt="..."/>
                                    <h4 class="title">Chet Faker<br />
                                        <a href="#"><small>@chetfaker</small></a>
                                    </h4>
                                </div>
                                <p class="description text-center">
                                    "I like the way you work it <br>
                                    No diggity <br>
                                    I wanna bag it up"
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br /><small>Files</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>2GB<br /><small>Used</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>24,6$<br /><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title"> Equipo </h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <div class="avatar">
                                                    <img src="image/profile1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                               Jorge
                                                <br />
                                                <span class="text-muted"><small>Offline</small></span>
                                            </div>

                                            <div class="col-xs-3 text-right">
                                                <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <div class="avatar">
                                                    <img src="image/profile2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                Luis
                                                <br />
                                                <span class="text-success"><small>Available</small></span>
                                            </div>

                                            <div class="col-xs-3 text-right">
                                                <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                            </div>
                                        </div>
                                    </li>



                                    <li>
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <div class="avatar">
                                                    <img src="image/profile3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                Alessandra
                                                <br />
                                                <span class="text-danger"><small>Busy</small></span>
                                            </div>

                                            <div class="col-xs-3 text-right">
                                                <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-8 col-md-7">
                         <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
                         <%Integer name = (Integer)request.getSession().getAttribute("myname"); %>
                         <c:forEach var="user" items="<%=service.getUsersById(name)%>">

                        <div class="card">
                            <div class="header">
                                <h4 class="title"> Perfil </h4>
                            </div>
                            <div class="content">
                                <form action="users" method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label> ID </label>
                                                <input type="text" name="id" class="form-control border-input" value="${user.id}"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"> Direccion Email </label>
                                                <input type="email" name="email" class="form-control border-input" placeholder="email" value="${user.email}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control border-input" placeholder="password" value="${user.password}">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Nombre </label>
                                                <input type="text" class="form-control border-input" name="firstName" placeholder="Company" value="${user.firstName}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Apellido </label>
                                                <input type="text" class="form-control border-input" name="lastName" placeholder="Last Name" value="${user.lastName}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label> Direccion </label>
                                                <input type="text" class="form-control border-input" name="address" placeholder="Home Address" value="${user.address}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label> Dni </label>
                                                <input type="text" class="form-control border-input" name="dni" placeholder="Dni" value="${user.dni}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label> Celular </label>
                                                <input type="text" class="form-control border-input" name="phone" placeholder="Phone" value="${user.phone}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label> Puntos </label>
                                                <input type="text" class="form-control border-input" name="points" placeholder="Points" value="${user.points}">

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label> Sobre mi </label>
                                                <textarea rows="5" class="form-control border-input" placeholder="Aqui puede ser su descripcion" value="Mike">
                                                </textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                           <input type="hidden" value="update" name="action"/>
                                        <button type="submit" class="btn btn-info btn-fill btn-wd" > Actualizar </button>

                                    </div>

                                </form>
                            </div>
                        </div>

                         </c:forEach>
                    </div>




                </div>
            </div>
        </div>




    </div>
</div>




</body>

<!--   Core JS Files   -->
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap3.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="js/demo.js"></script>

</html>
