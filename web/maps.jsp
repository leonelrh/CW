<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 20/05/2018
  Time: 17:07
  AIzaSyDbNormGFRvtGsc9l3W1SGP9tGkjAZI4Js
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Obtener coordenadas de un marcador </title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map {
            width: 100%;
            height: 100%;
        }
        #coords{width: 500px;}
    </style>
</head>
<body >
<div id="map"></div>

<input type="text" id="coords" />
<script>

    var marker;
    var coords = {};

    initMap = function ()
    {

        navigator.geolocation.getCurrentPosition(
            function (position){
                coords =  {
                    lng: position.coords.longitude,
                    lat: position.coords.latitude
                };
                setMapa(coords);


            },function(error){console.log(error);});

    }

    function setMapa (coords)
    {

        var map = new google.maps.Map(document.getElementById('map'),
            {
                zoom: 15,
                center:new google.maps.LatLng(coords.lat,coords.lng),

            });

        marker = new google.maps.Marker({
            map: map,
            draggable: true,
            animation: google.maps.Animation.DROP,
            position: new google.maps.LatLng(coords.lat,coords.lng),

        });

        marker.addListener('click', toggleBounce);

        marker.addListener( 'dragend', function (event)
        {
            document.getElementById("coords").value = this.getPosition().lat()+","+ this.getPosition().lng();
        });
    }

    function toggleBounce() {
        if (marker.getAnimation() !== null) {
            marker.setAnimation(null);
        } else {
            marker.setAnimation(google.maps.Animation.BOUNCE);
        }
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDbNormGFRvtGsc9l3W1SGP9tGkjAZI4Js&callback=initMap">
</script>
</body>
</html>