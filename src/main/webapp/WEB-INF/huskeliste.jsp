<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Per
  Date: 02-03-2020
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Huskeliste</title>
</head>
<body>
${sessionScope.besked}
<span style="float: right">
<form action="LogOutServlet" method="post">
    <input type="submit" value="logout">
</form>
</span>
<h1>Du kan nu tilføje emner til din indkøbskurv</h1>
<br>
<form action="AddItemServlet" method="post">
    <fieldset>
        <legend>Tilføj vare i kurv:</legend>
        <label for="fname">Skriv varenavn</label><br>
        <input type="text" id="fname" name="vareNavn"><br>
        <input type="submit" value="tilføj">
    </fieldset>
</form>
<br>
${requestScope.besked}
<br>
<c:forEach var="element" items="${sessionScope.basket}">
    ${element}
    <br>

</c:forEach>

</body>
</html>
