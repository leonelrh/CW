<%--
  Created by IntelliJ IDEA.
  User: WilmerLeonelRAMOSHER
  Date: 11/11/2018
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> workspaces star rating</title>
    <meta name="description" content="">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/starrr.css">
    <style type='text/css'>
        img.ribbon {
            position: fixed;
            z-index: 1;
            top: 0;
            right: 0;
            border: 0;
            cursor: pointer; }
        .container {
            margin-top: 60px;
            text-align: center;
            max-width: 450px; }

        input {
            width: 30px;
            margin: 10px 0;
        }
    </style>

</head>
<body>
<div class="container">
    <h3>Calificacion</h3>
    <h5>Seleccione puntaje</h5>
    <div class='starrr' id='star1'></div>
    <div>&nbsp;
        <span class='your-choice-was' style='display: none;'>
        Tu puntaje es <span class='choice'></span>.
      </span>
    </div>
    <h5>Avanzado: </h5>
    <div class='starrr' id='star2'></div>
    <br />
    <input type='text' name='rating' value='3' id='star2_input' />
</div>

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
<script src="js/starrr.js"></script>
<script>
    $('#star1').starrr({
        change: function(e, value){
            if (value) {
                $('.your-choice-was').show();
                $('.choice').text(value);
            } else {
                $('.your-choice-was').hide();
            }
        }
    });

    var $s2input = $('#star2_input');
    $('#star2').starrr({
        max: 10,
        rating: $s2input.val(),
        change: function(e, value){
            $s2input.val(value).trigger('input');
        }
    });
</script>
<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-39205841-5', 'dobtco.github.io');
    ga('send', 'pageview');
</script>
</body>
</html>
