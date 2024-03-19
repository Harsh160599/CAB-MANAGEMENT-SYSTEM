<%@ page language="java" contentType="text/html; charset=ISO-8859-1
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Delete Vehicle</h2>
    <form action="delvehicle" method="post">
        <input type="hidden" name="vid" value="${vehicleId}">
        <input type="submit" value="Delete">
    </form>
</body>
</html>