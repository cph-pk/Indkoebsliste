<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Per
  Date: 02-03-2020
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
<h2>Her kan du se en liste af brugere. Du kan også slette brugere her.</h2>
<br>
${requestScope.besked}
<br>
<form action="AdminServlet" method="post">
    <fieldset>
        <legend>Slet bruger:</legend>
        <label for="fname">Brugernavn</label><br>
        <input type="text" id="fname" name="brugernavn"><br>
        <input type="submit" value="slet bruger">
    </fieldset>
</form>
<br>
<c:forEach var="element" items="${applicationScope.brugerMap}">
    ${element}
    <br>
</c:forEach>
</body>
</html>
