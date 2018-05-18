<%@ page import="pe.com.coworking.models.*" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 16/04/2018
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> CoWorking </title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>

</head>
<body>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"> CoWorking</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="about.html"> Acerca </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="services.html"> Servicios </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html"> Contacto </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="newUser.jsp"> Registrate </a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Iniciar sesion
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="login.jsp">PERFIL </a>
                        <a class="dropdown-item" href="sidebar.html"> Invitar </a>
                        <a class="dropdown-item" href="faq.html">Configuracion </a>
                        <a class="dropdown-item" href="404.html"> Salir </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">
        <small>
            <a href="#"> </a>
        </small>
    </h1>
    <p>

    </p>


    <div class="row">

        <div class="col-lg-8">
            <% Office office = (Office)request.getAttribute("office");
                int var=office.getId();
            %>

<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
<c:forEach var="office" items="<%=service.getOfficesById(var)%>">




            <!-- Preview Image -->
            <img class="img-fluid rounded" src="image/${office.id}.jpg" >

            <hr>

            <p> INFORMACION DE LA OFICINA </p>

            <hr>

<%--
            <% Office office = (Office)request.getAttribute("office");
                response.getWriter().print("<p> La variable vale " + office.getId() + "</p>");
            %>--%>



        <%--    <%
           String vari = "1001";
            int var=office.getId();%>--%>

     <%--       Integer variable = (Integer)req.getAttribute("unEntero");--%>



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

            <p> SERVICIOS  </p>

            <hr>

            <blockquote class="blockquote">
                <p class="mb-0">  </p>
                <footer class="blockquote-footer">S
                    <cite title="Source Title">S</cite>
                </footer>
            </blockquote>



            <div class="row">

                <%--<%String ide=(String)request.getSession().getAttribute("uowner");%>--%>
                <%--<c:forEach var="court" items="<%=service.getCourtsByOwner(ide)%>">--%>
                <% String variable = "1001"; %>
                <%String ide=(String)request.getSession().getAttribute("uowner");%>
                <c:forEach var="servic" items="<%=service.getServicesByOffice(variable)%>">
                    <div class="col-md-4">
                        <div class="thumbnail">
                                <%--<a href="" target="_blank">--%>
                            <%--<img src="image/court/${servic.id}.jpg" alt="Lights" style="width:100%" data-toggle="modal" data-target="#${servic.id}">--%>
                            <div class="caption">
                                <p>${servic.namService}</p>
                                <p>${servic.price}</p>
                            </div>




                                <%--</a>--%>
                        </div>
                    </div>
                </c:forEach>

            </div>


            <hr>

            <hr>

            <p> COMENTARIOS  </p>

            <hr>

            <!-- Comments Form -->
            <div class="card my-4">
                <h5 class="card-header">Escribe un comentario</h5>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
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

        <div class="col-md-4">
          <%--  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">--%>

            <div class="card my-4  h-100" >
                <h5 class="card-header"> Detalle Reserva </h5>
                <div class="card-body ">

                    Precio : S/.<%=office.getPrice()%> /dia <p></p>

                    Evaluacion : 4/5 <p></p>

                    <div class="container">
                        <div class='col-md-5'>
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker6'>
                                    Fecha Inicio:<input type="datetime-local"/>
                                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                                </div>
                            </div>
                        </div>
                        <div class='col-md-5'>
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker7'>
                                    <%-- <input type="datetime-local" class="form-control" />--%>
                                    Fecha Fin:<input type="datetime-local" />
                                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    Direccion <p></p>

                    N° Personas <p></p>

                    Compartir <p></p>

                    <%  Office office1=service.getOfficeById(var);%>

                    <div class="input-group">
                        <span class="input-group-btn">
                  <button class="btn btn-info btn-lg" type="button" data-toggle="modal" data-target="#<%=office1.getId()%>"> RESERVAR AHORA </button>
                </span>
                    </div><p></p>




                    <div class="modal fade" id="<%=office1.getId()%>" role="dialog">
                        <div class="modal-dialog">


                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><%=office1.getTitle()%></h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                </div>
                                <div class="modal-body">
                                    <img src="image/<%=office1.getId()%>.jpg" width="450" height="200"><p></p>
                                    CAPACIDAD: <%=office1.getCapacity()%><p></p>
                                    ADDRESS: <%=office1.getAddress()%><p></p>
                                    PRICE: <%=office1.getPrice()%><p></p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success"><a href="courts?action=edit&id=<c:out value="${court.id}"/>"> Reservar </a></button>
                                </div>
                            </div>

                        </div>
                    </div>

                    <button class="btn btn-info btn-lg" type="button"> Agregar a Calendario </button>


                </div>

            </div>

              <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>

        </div>

    </div>



    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>


</body>
</html>
