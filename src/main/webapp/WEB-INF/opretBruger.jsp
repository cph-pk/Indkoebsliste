<%--
  Created by IntelliJ IDEA.
  User: Per
  Date: 02-03-2020
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret Bruger</title>
</head>
<body>
<h2>Her kan du registrerer dig som bruger på huskelisten</h2>
<br>
${requestScope.besked}
<form action="OpretServlet" method="post">
    <fieldset>
        <legend>Opret bruger:</legend>
        <label for="fname">Brugernavn</label><br>
        <input type="text" id="fname" name="brugernavn"><br>
        <label for="code">Kode</label><br>
        <input type="password" id="code" name="kode"><br>
        <input type="submit" value="opret">
    </fieldset>
</form>
</body>
</html>
