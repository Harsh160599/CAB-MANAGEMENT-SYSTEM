<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #20a6db;
    margin: 0;
    padding: 0;
}

.navbar {
    width: 200px;
    height: 100vh;
    background-color: #333;
    position: fixed;
    overflow: auto;
    top: 0;
    left: 0;
    padding-top: 20px; /* Add some padding to the top */
}

.navbar a {
    padding: 10px 16px;
    text-decoration: none;
    color: white;
    display: block;
    transition: background-color 0.3s; /* Smooth transition on hover */
    font-size: 20px;
    font-weight: bold;
}

.navbar a:hover {
    background-color: #555; /* Darken the background on hover */
}

.logo {
    text-align: center;
    padding: 20px 0;
}

.logo img {
    width: 150px;
}

.main-content {
    margin-left: 200px;
    padding: 20px;
}

h1 {
    font-size: 60px;
    font-weight: bold;
    font-family: Georgia, 'Times New Roman', Times, serif;
    position:absolute;
    top:56%;
    left:40%;
}
.ab{
    position:absolute;
    top:26%;
    left:54%;
}
}
</style>
</head>
<body>
<div class="navbar">
    <div class="logo">
        <img src="https://cdn-icons-png.flaticon.com/128/8030/8030198.png" alt="Logo">
    </div>
     <a href="/newcabfare">CabFair</a>
   <a href="/newvehicle">Vehicle</a>
   <a href="/cabfareall">ViewCarFare</a>
  <a href="/vehicleall">ViewVehicles</a>
    <a href="/logininfo">Logout</a>
</div>
<div class="main-content">
<img class="ab" src="https://cdn-icons-png.flaticon.com/512/81/81591.png" height=250px,width=250px;>
    <h1>Welcome to Admin Page</h1>
</div>
</body>
</html>
