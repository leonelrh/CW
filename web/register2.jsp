<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 18/04/2018
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>

    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src=https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body >

<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<div class="container">

    <div class="panel panel-primary">
        <div class="panel-heading">Crear usuario </div>
        <div class="panel-body">

            <form class="form-horizontal" action="organizers" method="post">
                <h2>${action == 'edit' ? "Editar Perfil" : "Nuevo Perfil Organizador"}</h2><br>
                <div class="form-group">
                    <label class="control-label col-md-6">ID:</label>
                    <div class="col-md-6">
                        <input type="text" name="id" class="form-control" placeholder="Id" value="${organizer.id}"
                                <c:out value="${action == 'edit' ? 'readonly=\"readonly\"' : '' }"/>
                        />
                    </div>
                </div>

    <div class="form-group row">
        <label for="inputId" class="col-sm-2 col-form-label">ID </label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputId" placeholder="Id">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputFirstName" class="col-sm-2 col-form-label">First Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputFirstName" placeholder="FirstName">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputLastName" class="col-sm-2 col-form-label">Last Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputLastName" placeholder="LastName">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-4">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputDni" class="col-sm-2 col-form-label">Dni</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputDni" placeholder="Dni">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputPhoto" class="col-sm-2 col-form-label">Photo</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputPhoto" placeholder="Photo">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputPhone" class="col-sm-2 col-form-label">EPhone</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputPhone" placeholder="Phone">
        </div>
    </div>

    <div class="form-group row">
        <label for="inputPoint" class="col-sm-2 col-form-label">Points</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputPoint" placeholder="Points">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputaddress3" class="col-sm-2 col-form-label">Address</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="inputaddress3" placeholder="Address">
        </div>
    </div>

                <div class="form-group">

                    <div class="col-md-6">

                        <input type="hidden" value="${action == 'edit' ? "update" : "agregate"}" name="action"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-md-6">
                        <button type="submit" class="btn btn-primary" value="Ingresar">${action == 'edit' ? "Actualizar" : "Grabar"}</button>

                    </div>
                </div>
            </form>
        </div>
</div>
</div>

</body>

<!--   Core JS Files   -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="js/material-kit.js" type="text/javascript"></script>

</html>
