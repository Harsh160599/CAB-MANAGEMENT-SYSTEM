<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 h1 {
    font-size: 50px;
    font-weight: bold;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
    h1 {
        color: #333;
        text-align:center;
        font-weight: bold;
       font-family: Georgia, 'Times New Roman', Times, serif;
    }
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
    transition: background-color 0.3s;
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

table {
    width: 600px;
    box-shadow: -1px 12px 12px -6px rgba(0, 0, 0, 0.5);
    position:absolute;
    top:12%;
    left:29%;
}

table,
td,
th {
    padding: 20px;
    border: 1px solid lightgray;
    border-collapse: collapse;
    text-align: center;
    cursor: pointer;
}

td {
    font-size: 18px;
}

th {
    background-color: lightgreen;
    color: white;
}

tr:nth-child(odd) {
    background-color: lightblue;
}

tr:nth-child(odd):hover {
    background-color: lightblue;
    color: white;
    transform: scale(1.5);
    transition: transform 300ms ease-in;
}

tr:nth-child(even) {
    background-color: #ededed;
}

tr:nth-child(even):hover {
    background-color: lightgray;
    transform: scale(1.5);
    transition: transform 300ms ease-in;
}

button {
    background-color: #dc3545;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 3px;
}

button:hover {
    background-color: #c82333;
}

</style>

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
<h1>Vehicles List</h1>
    <table border="1">
        <tr>
            <th>Vehicle ID</th>
            <th>Vehicle Name</th>
            <th>Vehicle Number</th>
            <th>Owner Name</th>
            <th>Seats</th>
            <th>Phone</th>
            <th>Action</th>
        </tr>
        <c:forEach var="vehicle" items="${vehicleList}">
            <tr>
                <td>${vehicle.vid}</td>
                <td>${vehicle.vechName}</td>
                <td>${vehicle.vechNo}</td>
                <td>${vehicle.ownerName}</td>
                <td>${vehicle.seats}</td>
                <td>${vehicle.phone}</td>
                <td><form action="delvehicle/${vehicle.vid}" method="get">
                        <button type="submit">Delete</button>
                    </form>
                    <br>
                   <form action="modify/${vehicle.vid}" method="get">
                        <button type="submit">Update</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>