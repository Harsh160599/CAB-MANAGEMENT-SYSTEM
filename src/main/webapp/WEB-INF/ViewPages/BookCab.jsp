<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    font-weight: bold;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
    h1 {
        color: #333;
        text-align:center;
        font-weight: bold;
       font-family: Georgia, 'Times New Roman', Times, serif;
    }
    form {
       width:700px;
       padding: 20px;
       border: 1px solid #dad1d1;
       border-radius: 8px;
       box-shadow: 0 10px 25px rgba(0, 0, 0, 0.97);
       background-color: rgba(9, 10, 10, 0.544);
       position:absolute;
       top:13%;
       left:33%;
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
     position :relative;
     top:60%;
     left:48%;
    }
    input[type="submit"]:hover {
       
       background-color:#20a6db;
   
    }
    /* Styling for select element */
select {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-bottom: 15px;
    font-family: Arial, sans-serif;
    font-size: 16px;
    color: #333;
    background-color: #fff;
}

/* Styling for date input element */
input[type="date"] {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-bottom: 15px;
    font-family: Arial, sans-serif;
    font-size: 16px;
    color: #333;
    background-color: #fff;
}

input[type="date"]:focus,
select:focus {
    outline: none;
    border-color: #20a6db; 
    box-shadow: 0 0 5px rgba(32, 166, 219, 0.5);
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
 <h1>Book Cab</h1>
    <form action="newbookinginfo" method="post" onsubmit="return validatePhoneNumber()">
        <label for="bookId">Booking ID:</label>
        <input type="text" id="bookId" name="bookId" required><br><br>
        
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br><br>
        
        <label for="fromLocation">From Location:</label>
        <select id="fromLocation" name="fromLocation" class="form-control">
            <option value="">Select From Location</option>
            <!-- Iterate over uniqueFromLocations to generate options -->
            <c:forEach items="${fromLocations}" var="location">
                <option value="${location}">${location}</option>
            </c:forEach>
        </select><br><br>
          <label for="toLocation">To Location:</label>
        <select id="toLocation" name="toLocation" class="form-control">
            <option value="">Select To Location</option>
            <!-- Iterate over uniqueToLocations to generate options -->
            <c:forEach items="${toLocations}" var="location">
                <option value="${location}">${location}</option>
            </c:forEach>
        </select><br><br>
        
        <label for="vechNo">Vehicle:</label>
        <select id="vechNo" name="vechNo" required>
            <c:forEach items="${vehicleList}" var="vehicle">
                <option value="${vehicle.vechNo}">${vehicle.vechName} - ${vehicle.vechNo}</option>
            </c:forEach>
        </select><br><br>
        
        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" required><br><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required><br><br>
         <span id="phoneError" style="color: red;"></span><br>
        <input type="submit" value="Book">
    </form>
    <script>
    function updateToLocations() {
        var fromLocation = document.getElementById("fromLocation").value;
        var toLocationDropdown = document.getElementById("toLocation");
        
        toLocationDropdown.innerHTML = '<option value="">Select To Location</option>';
        
        if (fromLocation) {
            fetch('/getToLocations?fromLocation=' + encodeURIComponent(fromLocation))
                .then(response => response.json())
                .then(data => {
                    data.forEach(location => {
                        var option = document.createElement("option");
                        option.value = location;
                        option.text = location;
                        toLocationDropdown.appendChild(option);
                    });
                })
                .catch(error => console.error('Error:', error));
        }
    }

    document.getElementById("fromLocation").addEventListener("change", updateToLocations);
   
    updateToLocations();
 
    function validatePhoneNumber() {
        var phoneInput = document.getElementById("phone");
        var phoneError = document.getElementById("phoneError");
     
        var phonePattern = /^\d{10}$/;
        
        if (!phonePattern.test(phoneInput.value)) {
            phoneError.textContent = "Please enter a valid 10-digit phone number.";
            phoneInput.focus(); // 
            return false; 
        } else {
            phoneError.textContent = ""; 
            return true; 
        }
    }
</script>
</body>
</html>