<%--
  Created by IntelliJ IDEA.
  User: leone
  Date: 27/05/2018
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>File Upload Example in JSP and Servlet - Java web application</title>

</head>
<body>
<div>
    <h3> Choose File to Upload in Server </h3>
    <form action="FileUploadHandler" method="post" enctype="multipart/form-data">
        <input type="file" name="file" />
        <input type="submit" value="upload" />
    </form>
</div>
</body>
</html>
