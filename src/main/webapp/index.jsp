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
<br>
<span style="color: red">${requestScope.besked}</span>
<br>
<form action="LoginServlet" method="post">
    <fieldset>
        <legend>Login:</legend>
        <label for="fname">Brugernavn</label><br>
        <input type="text" id="fname" name="brugernavn"><br>
        <label for="code">Kode</label><br>
        <input type="password" id="code" name="kode"><br>
        <input type="submit" value="login">
    </fieldset>
</form>
</body>
</html>
