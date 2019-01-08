<%@ page import="pe.com.coworking.models.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>CoWorking</title>

  <link href="css/bootstrap4/bootstrap.css" rel="stylesheet">

  <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand" href="indexp.jsp"> CoWorking</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="listUsers.jsp"> Acerca </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="prueba4.jsp"> Servicios </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp"> Contacto </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register.jsp"> Registrate </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="login.jsp"> Iniciar Sesion </a>
        </li>

      </ul>
    </div>
  </div>
</nav>

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('image/city.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3> Reserva </h3>
          <p> Reserva officinas en los mejores lugares </p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('image/city4.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3> Publica </h3>
          <p> Publica offinas </p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('image/city3.jpg')">
        <div class="carousel-caption d-none d-md-block">
          <h3> Gestiona horario </h3>
          <p> Integra tu reserva con el horario</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</header>

<!-- Page Content -->
<div class="container">

  <h1 class="my-4"> Bienvenido a coworking </h1>

  <div class="row">
    <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>
    <c:forEach var="category" items="${service.categories}">
    <div class="col-lg-4 mb-4">
      <div class="card ">
        <h4 class="card-header">${category.categoryName}</h4>
        <div class="card-body">
          <a href="office.jsp"><img class="card-img-top" src="image/${category.categoryName}.jpg" height="200"></a>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary"> Buscar </a>
        </div>
      </div>
    </div>
    </c:forEach>
  </div>


  <!-- Portfolio Section -->
  <h2> Espacios de Trabajo </h2>


  <div class="row">
<c:forEach var="office" items="${service.offices}">
    <div class="col-lg-4 col-sm-6 portfolio-item">

      <a href="offices?action=list&id=<c:out value="${office.id}"/>"><img class="card-img-top" src="image/${office.id}.jpg" height="250" >
         <%-- <%
            application.setAttribute("variable",service.getOffices().get(1).getIdAsString());
          %>--%>
        </a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">${office.title}</a>
          </h4>
          <p class="card-text">
            ${office.description}
          <br>Capacidad :  ${office.capacity}
            <br>Direccion  :  ${office.address}
            <br>Precio :  ${office.price}
            <br>Ciudad  :  ${office.city.id}
          </p>
        </div>
    </div>
</c:forEach>
  </div>


  <!-- /.row -->

  <!-- Features Section -->
  <div class="row">
    <div class="col-lg-6">
      <h2> Realiza reservas </h2>
      <p> Coworking inclue :</p>
      <ul>
        <li>
          <strong> Calendar </strong>
        </li>
        <li> Reservas realizadas </li>
        <li> Clientes </li>
        <li> Perfil </li>
        <li> consultar information </li>
      </ul>
      <p> Una interfaz sencilla de usar para realizar diferentes reservas encontrando el mejor lugar para trabajar </p>
    </div>
    <div class="col-lg-6">
      <img class="img-fluid rounded" src="image/imag.jpg" alt="">
    </div>
  </div>
  <!-- /.row -->

  <hr>

  <!-- Call to Action Section -->
  <div class="row mb-4">
    <div class="col-md-8">
      <p> Cualquier consulta sobre la plataforma no dude en contactarnos para ayudar y brindar informacion de la aplicacion web </p>
    </div>
    <div class="col-md-4">
      <a class="btn btn-lg btn-secondary btn-block" href="#"> Contactanos </a>
    </div>
  </div>

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Copyright &copy; CoWorking 2018</p>
  </div>
  <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>
