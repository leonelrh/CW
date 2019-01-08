<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 28/04/2018
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> CoWorking </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <meta name="viewport" content="width=device-width" />

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <link href="css/bootstrap2.min.css" rel="stylesheet" />
    <link href="css/material-bootstrap-wizard.css" rel="stylesheet" />

    <link href="css/demo2.css" rel="stylesheet" />

</head>
<body>
<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<div class="image-container set-full-height" style="background-image: url('image/wizard-profile.jpg')">


    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="indexp.jsp">CoWorking</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="">
                        <a href="register.jsp">
                            <i class="material-icons"></i> NOSOTROS
                        </a>
                    </li>
                    <li class="">
                        <a href="register.jsp">
                            <i class="material-icons"></i> SERVICIOS
                        </a>
                    </li>
                    <li class="">
                        <a href="register.jsp">
                            <i class="material-icons"></i> OFICINAS
                        </a>
                    </li>
                    <li class="">
                        <a href="login.jsp">
                            <i class="material-icons">fingerprint</i> Login
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>



    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">

                <div class="wizard-container">
                    <div class="card wizard-card" data-color="green" id="wizardProfile">
                        <form action="FileUploadHandler" method="post" enctype="multipart/form-data">
                            <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Crea tu cuenta
                                </h3>
                            </div>

                            <div class="tab-content">

                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="picture-container">
                                                <div class="picture">
                                                    <img src="image/default-avatar.png" class="picture-src" id="wizardPicturePreview" />
                                                    <input type="file" id="wizard-picture" name="file"/>
                                                </div>
                                                <h6>Foto</h6>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">face</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Nombre</label>
                                                    <input name="firstName" type="text" class="form-control"/>
                                                </div>
                                            </div>

                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">record_voice_over</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Apellido </label>
                                                    <input name="lastName" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">email</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Correo</label>
                                                    <input name="email" type="email" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="input-group">

                                                <div class="form-group label-floating">
                                                    <label class="control-label">Contraseña </label>
                                                    <input name="password" type="password" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-7 col-sm-offset-1">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Direccion</label>
                                                <input type="text" class="form-control" name="address"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">DNI</label>
                                                <input type="text" class="form-control" name="dni"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group label-floating">
                                                <label class="control-label">N° Contacto</label>
                                                <input type="text" class="form-control" name="phone"/>
                                            </div>
                                        </div>

                                    </div>
                                  <div class="text-center">
                                      <input type="hidden" value="${action == 'edit' ? "update" : "agregate"}" name="action" />
                                <button type="submit" class="btn btn-success" value="Ingresar">${action == 'edit' ? "Actualizar" : "Registrar"}</button>

                            </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container text-center">
        Copy right CoWorking
    </div>
    </div>
</div>

</body>

<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap2.min.js" type="text/javascript"></script>
<script src="js/jquery.bootstrap.js" type="text/javascript"></script>
<script src="js/material-bootstrap-wizard.js"></script>
<script src="js/jquery.validate.min.js"></script>

</html>
