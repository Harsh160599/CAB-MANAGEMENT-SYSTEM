<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Delete Cab Fare</h1>
    <form action="/delcabfare" method="get">
        <label for="id">Enter Cab Fare ID to Delete:</label>
        <input type="text" id="id" name="id"><br><br>
        <input type="submit" value="Delete">
    </form>
</body>
</html>