<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 20/05/2018
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 1. Include style -->
    <link href="css/atc-style-light-blue.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- 2. Include script -->
<script type="text/javascript">(function () {
    if (window.addtocalendar)if(typeof window.addtocalendar.start == "function")return;
    if (window.ifaddtocalendar == undefined) { window.ifaddtocalendar = 1;
        var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
        s.type = 'text/javascript';s.charset = 'UTF-8';s.async = true;
        s.src = ('https:' == window.location.protocol ? 'https' : 'http')+'://addtocalendar.com/atc/1.5/atc.min.js';
        var h = d[g]('body')[0];h.appendChild(s); }})();
</script>

<!-- 3. Place event data -->
<span class="addtocalendar atc-style-blue">
        <var class="atc_event">
            <var class="atc_date_start">2014-05-04 12:00:00</var>
            <var class="atc_date_end">2014-05-04 18:00:00</var>
            <var class="atc_timezone">Europe/London</var>
            <var class="atc_title">Star Wars Day Party</var>
            <var class="atc_description">May the force be with you</var>
            <var class="atc_location">Tatooine</var>
            <var class="atc_organizer">Luke Skywalker</var>
            <var class="atc_organizer_email">luke@starwars.com</var>
        </var>
    </span>
</body>
</html>
