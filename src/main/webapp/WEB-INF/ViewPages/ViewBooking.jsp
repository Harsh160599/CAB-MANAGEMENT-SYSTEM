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
    font-size: 50px;
    text-align:center;
    font-weight: bold;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

table {
    width: 600px;
    box-shadow: -1px 12px 12px -6px rgba(0, 0, 0, 0.5);
    position:absolute;
    top:18%;
    left:28%;
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
    <a href="/newbooking">BookCab</a>
    <a href="/bookingall">ViewBooking</a>
    <a href="/logininfo">Logout</a>
</div>

<div class="main-content">
 <h1>View Bookings</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Booking ID</th>
                <th>Date</th>
                <th>From Location</th>
                <th>To Location</th>
                <th>Vehicle No</th>
                <th>Customer Name</th>
                <th>Phone</th>
                <th>Fair</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${bookingList}" var="booking">
                <tr>
                    <td>${booking.bookId}</td>
                    <td>${booking.date}</td>
                    <td>${booking.fromLocation}</td>
                    <td>${booking.toLocation}</td>
                    <td>${booking.vechNo}</td>
                    <td>${booking.customerName}</td>
                    <td>${booking.phone}</td>
                    <td>${booking.fare}</td>
                    <td>
                        <form action="/deletebookinginfo/${booking.bookId}" method="get">
                            <button type="submit">Delete</button> 
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>