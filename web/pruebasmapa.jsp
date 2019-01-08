<%--
  Created by IntelliJ IDEA.
  User: wilme
  Date: 9/08/2018
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


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
        #coords{width: 100px;}
    </style>

</head>
<body>










                                <!--        You can switch ' data-color="green" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->



                                       <div class="col-sm-12 ">


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
                                                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBy4gVM0fepX3gcLqbCNFVSA0FClebjIkI&callback=initMap">
                                                    </script>



                                                </div>



</body>

<script src="js/jquery4-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap4.min.js" type="text/javascript"></script>
<script src="js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
<script src="js/gsdk-bootstrap-wizard.js"></script>
<script src="js/jquery.validate4.min.js"></script>

<script src="js/paper-dashboard.js"></script>
</html>