<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color:#20a6db;
    }
    h1 {
        color: #333;
        text-align:center;
        font-weight: bold;
       font-family: Georgia, 'Times New Roman', Times, serif;
    }
    form {
       width:400px;
       padding: 20px;
       border: 1px solid #dad1d1;
       border-radius: 8px;
       box-shadow: 0 10px 25px rgba(0, 0, 0, 0.97);
       background-color: rgba(9, 10, 10, 0.544);
       position:absolute;
       top:15%;
       left:37%;
       padding-right: 2.5em;
    }
    label {
        display: block;
        margin-bottom: 10px;
         font-weight: bold;
    font-family: Georgia, 'Times New Roman', Times, serif;
    color: white;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 15px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
         font-family: Georgia, 'Times New Roman', Times, serif;
    font-weight: bold;
    box-shadow: 0 0 10px rgb(29, 99, 115);
    position:absolute;
    left:40%;
    top:88%;
  
    }
    input[type="submit"]:hover {
       
       background-color:#20a6db;
   
    }
</style>
<body>
   <h1>Edit Cab Fare</h1>
    <form action="/updatecabfare/${cabFare.id}" method="post">
        <label for="fromLocation">From Location:</label><br>
        <input type="text" id="fromLocation" name="fromLocation" value="${cabFare.fromLocation}"><br>
        <label for="toLocation">To Location:</label><br>
        <input type="text" id="toLocation" name="toLocation" value="${cabFare.toLocation}"><br>
        <label for="fare">Fare:</label><br>
        <input type="text" id="fare" name="fare" value="${cabFare.fare}"><br><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>