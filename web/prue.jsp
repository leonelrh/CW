<%@ page import="pe.com.coworking.models.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: wilme
  Date: 29/07/2018
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>CoWorking</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <link href="image/Logo.jpg" rel="icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">
    <link href="css/landingpage/bootstrap.min.css" rel="stylesheet">
    <link href="css/landingpage/style.css" rel="stylesheet">

    <link href="css/landingpage/font-awesome.min.css" rel="stylesheet">


</head>
<body>
<!--==========================
   Header
 ============================-->
<header id="header">
    <div class="container-fluid">

        <div id="logo" class="pull-left">
            <h1><a href="#intro" class="scrollto">CoWorking</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li><a href="#intro">Inicio</a></li>
                <li><a href="#about">Nosotros</a></li>
                <li><a href="office2.jsp">Servicios</a></li>
                <li><a href="#portfolio">Oficinas</a></li>
                <li><a href="login.jsp">Ingresar</a></li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
</header>  <!-- #header -->

<!--==========================
  Intro Section
============================-->


<section id="intro">
    <div class="intro-container">
        <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

            <ol class="carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

                <div class="carousel-item active">
                    <div class="carousel-background"><img src="image/LP1.jpg" alt=""></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2> Espacios de Trabajo </h2>
                            <p> Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades  </p>
                            <a href="#featured-services" class="btn-get-started scrollto"> Empezar  </a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="image/LP2.jpg" alt=""></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2> Espacios de Trabajo </h2>
                            <p>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades  </p>
                            <a href="#featured-services" class="btn-get-started scrollto"> Empezar </a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="image/LP3.jpg" alt=""></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2> Espacios de Trabajo </h2>
                            <p>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades  </p>
                            <a href="#featured-services" class="btn-get-started scrollto"> Empezar </a>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="image/LP4.jpg" alt=""></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2> Espacios de Trabajo </h2>
                            <p>Encuentra las mejores oficinas de diferentes tamaños con diseños creativos, comunidad atractiva y comodidades  </p>
                            <a href="#featured-services" class="btn-get-started scrollto"> Empezar </a>
                        </div>
                    </div>
                </div>
            </div>

            <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>

</section><!-- #intro -->



<main id="main">

    <!--==========================
      Featured Services Section
    ============================-->
    <section id="featured-services">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 box ">
                    <i class="ion-ios-bookmarks-outline"></i>
                    <h4 class="title"><a href=""> Reserva </a></h4>
                    <p class="description"> Encuentra los mejores espacios de trabajo y reserva </p>
                </div>

                <div class="col-lg-4 box box-bg">
                    <i class="ion-ios-stopwatch-outline"></i>
                    <h4 class="title"><a href=""> Publica </a></h4>
                    <p class="description"> Publica oficinas o espacios de trabajo para que pueda generar mayores ganancias </p>
                </div>

                <div class="col-lg-4 box">
                    <i class="ion-ios-heart-outline"></i>
                    <h4 class="title"><a href=""> Gestiona </a></h4>
                    <p class="description"> Tendras accedo a toda la informacion necesaria para que puedas tener un mayor control o mejor experiencia de usuario</p>
                </div>

            </div>
        </div>
    </section><!-- #featured-services -->



    <section id="portfolio"  class="section-bg" >
        <div class="container">

            <header class="section-header">
                <h3 class="section-title">CATEGORIA</h3>
            </header>

            <div class="row">
                <div class="col-lg-12">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">Oficina </li>
                        <li data-filter=".filter-app">Escritorio</li>
                        <li data-filter=".filter-card">Sala reunion</li>
                        <li data-filter=".filter-web">Sala conferencia</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container">


                <%--    <c:forEach var="office" items="${service.offices}">
                        <div class="col-lg-4 col-sm-6 portfolio-item">

                            <a href="offices?action=list&id=<c:out value="${office.id}"/>"><img class="card-img-top" src="image/${office.id}.jpg" height="250" >
                                    &lt;%&ndash; <%
                                       application.setAttribute("variable",service.getOffices().get(1).getIdAsString());
                                     %>&ndash;%&gt;
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
                    </c:forEach>--%>


                <jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

                <c:forEach var="office" items="${service.offices}">

                    <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp">
                        <div class="portfolio-wrap">
                            <figure>
                                <a href="offices?action=list&id=<c:out value="${office.id}"/>" title="Detalles"><img src="image/${office.id}.jpg" class="img-fluid"></a>
                            </figure>
                            <div class="portfolio-info">
                                <h4><a href="#">${office.title}</a></h4>
                                <p>${office.description}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>







                <%--     <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1002.jpg" class="img-fluid" alt="">
                                 <a href="image/1002.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 3" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Web 3</a></h4>
                                 <p>Web</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp" data-wow-delay="0.2s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1003.jpg" class="img-fluid" alt="">
                                 <a href="image/1003.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 2" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">App 2</a></h4>
                                 <p>App</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1004.jpg" class="img-fluid" alt="">
                                 <a href="image/1004.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 2" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Card 2</a></h4>
                                 <p>Card</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.1s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1005.jpg" class="img-fluid" alt="">
                                 <a href="image/1005.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 2" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Web 2</a></h4>
                                 <p>Web</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-app wow fadeInUp" data-wow-delay="0.2s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1006.jpg" class="img-fluid" alt="">
                                 <a href="image/1006.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 3" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">App 3</a></h4>
                                 <p>App</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1001.jpg" class="img-fluid" alt="">
                                 <a href="image/1001.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 1" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Card 1</a></h4>
                                 <p>Card</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp" data-wow-delay="0.1s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1002.jpg" class="img-fluid" alt="">
                                 <a href="image/1002.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 3" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Card 3</a></h4>
                                 <p>Card</p>
                             </div>
                         </div>
                     </div>

                     <div class="col-lg-4 col-md-6 portfolio-item filter-web wow fadeInUp" data-wow-delay="0.2s">
                         <div class="portfolio-wrap">
                             <figure>
                                 <img src="image/1003.jpg" class="img-fluid" alt="">
                                 <a href="image/1003.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 1" title="Preview"><i class="ion ion-eye"></i></a>
                                 <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                             </figure>

                             <div class="portfolio-info">
                                 <h4><a href="#">Web 1</a></h4>
                                 <p>Web</p>
                             </div>
                         </div>
                     </div>--%>

            </div>

        </div>
    </section><!-- #portfolio -->




</main>

<!--==========================
  Footer
============================-->
<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 footer-info">
                    <h3>CoWorking</h3>
                    <p>  Coworking es una aplicacion web que tiene como objetivo ayudar a encontrar a las personas las mejores oficinas en su ciudad </p>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Enlaces</h4>
                    <ul>
                        <li><i class="ion-ios-arrow-right"></i> <a href="#">Inicio</a></li>
                        <li><i class="ion-ios-arrow-right"></i> <a href="#">Nosotros</a></li>
                        <li><i class="ion-ios-arrow-right"></i> <a href="#">Servicios</a></li>
                        <li><i class="ion-ios-arrow-right"></i> <a href="#">Politica de privacidad</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-contact">
                    <h4> Contactanos </h4>
                    <p>
                        Lima Centro: Av. Arequipa 265<br>
                        Lima, Perú <br>
                        <strong>Phone:</strong> +51 01 976307888<br>
                        <strong>Email:</strong> works.spaces@gmail.com<br>
                    </p>

                    <div class="social-links">
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                    </div>

                </div>

                <div class="col-lg-3 col-md-6 footer-newsletter">
                    <h4> Suscribete </h4>
                    <p>Ingresa tu correo para recibir las mejores ofertas de oficina cada fin de semana ademas de otras novedades</p>
                    <form action="" method="post">
                        <input type="email" name="email"><input type="submit"  value="Suscribete">
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong> CoWorking </strong>. Todos los derechos reservados
        </div>
    </div>
</footer><!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

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

</body>
</html>
