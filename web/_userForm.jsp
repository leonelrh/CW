<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 18/04/2018
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>


</head>
<body>

<jsp:useBean id="service" class="pe.com.coworking.services.CWService"/>

<center><div class="container img-responsive" style="width:500px; height: 434px ">

    <form class="form-horizontal" action="users" method="post">
        <h2>${action == 'edit' ? "Editar Perfil" : " Nuevo perfil usuario "}</h2><br>

        <div class="form-group">
            <label class="control-label col-md-6">Nombres:</label>
            <div class="col-md-6">
                <input type="text" name="firstName" class="form-control" placeholder="First Name" value="${user.firstName}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-6">Apellidos:</label>
            <div class="col-md-6">
                <input type="text" name="lastName" class="form-control" placeholder="Last Name" value="${user.lastName}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-6">Correo Electr&oacute;nico:</label>
            <div class="col-md-6">
                <input type="text" name="email" class="form-control" placeholder="Example@gmail.com" value="${user.email}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-6">Contrase&ntilde;a:</label>
            <div class="col-md-6">
                <input type="password" name="password" class="form-control" placeholder="Ingrese una contrase&ntilde;a" value="${user.password}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-6">DNI:</label>
            <div class="col-md-6">
                <input type="text" name="dni" class="form-control" placeholder="Ingrese DNI" value="${user.dni}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-6">Foto:</label>
            <div class="col-md-6">
                <input type="text" class="form-control" name="photo" placeholder="Ingrese phot" value="${user.photo}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-6">Tel&eacute;fono:</label>
            <div class="col-md-6">
                <input type="text" name="phone" class="form-control" placeholder="Ingrese # Tel&eacute;fono" value="${user.phone}"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-6">Puntos :</label>
            <div class="col-md-6">
                <input type="text" name="points" class="form-control" placeholder="Puntos " value="${user.position}"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-6"> Address :</label>
            <div class="col-md-6">
                <input type="text" name="address" class="form-control" placeholder=" Direccion " value="${user.address}"/>
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
</center>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>

p