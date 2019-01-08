<!doctype html>
<html lang="en">

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
                <li>
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

                <li>
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

                <li class="active">
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
    <div class="main-panel">
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
                    <a class="navbar-brand" href="#"> Charts </a>
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
                            <input type="text" class="form-control" placeholder=" Search ">
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
                <div class="header text-center">
                    <h3 class="title"> Graficos </h3>
                </div>
                <div class="row">


                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header" data-background-color="rose">
                                <div id="roundedLineChart" class="ct-chart"></div>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Rounded Line Chart</h4>
                                <p class="category">Line Chart</p>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header" data-background-color="orange">
                                <div id="straightLinesChart" class="ct-chart"></div>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Straight Lines Chart</h4>
                                <p class="category">Line Chart with Points</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-chart">
                            <div class="card-header" data-background-color="blue">
                                <div id="simpleBarChart" class="ct-chart"></div>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Simple Bar Chart</h4>
                                <p class="category">Bar Chart</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header card-header-icon" data-background-color="blue">
                                <i class="material-icons">timeline</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Coloured Line Chart
                                    <small> - Rounded</small>
                                </h4>
                            </div>
                            <div id="colouredRoundedLineChart" class="ct-chart"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header card-header-icon" data-background-color="rose">
                                <i class="material-icons">insert_chart</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Multiple Bars Chart
                                    <small>- Bar Chart</small>
                                </h4>
                            </div>
                            <div id="multipleBarsChart" class="ct-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-header card-header-icon" data-background-color="blue">
                                <i class="material-icons">timeline</i>
                            </div>
                            <div class="card-content">
                                <h4 class="card-title">Coloured Bars Chart
                                    <small> - Rounded</small>
                                </h4>
                            </div>
                            <div id="colouredBarsChart" class="ct-chart"></div>
                        </div>
                    </div>

                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-header card-header-icon" data-background-color="red">
                                <i class="material-icons">pie_chart</i>
                            </div>

                            <div class="card-content">
                                <h4 class="card-title">Pie Chart</h4>
                            </div>

                            <div id="chartPreferences" class="ct-chart"></div>

                            <div class="card-footer">
                                <h6>Legend</h6>
                                <i class="fa fa-circle text-info"></i> Apple
                                <i class="fa fa-circle text-warning"></i> Samsung
                                <i class="fa fa-circle text-danger"></i> Windows Phone
                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portofolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="http://www.creative-tim.com"> Creative Tim </a>, made with love for a better web
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
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
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
<script src="js/Pruebas/material-dashboard.js?v=1.2.1"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="js/Pruebas/demo.js"></script>
<script>
    $(document).ready(function() {
        demo.initCharts();
    });
</script>

</html>
