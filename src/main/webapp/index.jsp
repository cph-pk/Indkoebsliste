<%--
  Created by IntelliJ IDEA.
  User: Per
  Date: 02-03-2020
  Time: 08:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Indkøbsliste</title>
</head>
<body>
<h1>Velkommen til din online indkøbsliste</h1>
<form action="LoginServlet" method="post">
    <label for="fname">Brugernavn</label>
    <input type="text" id="fname" name="brugernavn"><br>
    <label for="code">Kode</label>
    <input type="password" id="code" name="kode">
    <input type="submit" value="login">
</form>
</body>
</html>
