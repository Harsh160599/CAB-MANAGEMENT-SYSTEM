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

.main-content {
    margin-left: 200px;
    padding: 20px;
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
       left:43%;
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
  
    }
    input[type="submit"]:hover {
       
       background-color:#20a6db;
   
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
<h1>Add Vehicle</h1>
    <form action="newvehicleinfo" method="post" onsubmit="return validatePhoneNumber()">
        <label for="vid">Vehicle ID:</label><br>
        <input type="text" id="vid" name="vid" required><br>
        <label for="vechName">Vehicle Name:</label><br>
        <input type="text" id="vechName" name="vechName" required><br>
        <label for="vechNo">Vehicle Number:</label><br>
        <input type="text" id="vechNo" name="vechNo" required><br>
        <label for="ownerName">Owner Name:</label><br>
        <input type="text" id="ownerName" name="ownerName" required><br>
        <label for="seats">Seats:</label><br>
        <input type="text" id="seats" name="seats" required><br>
        <label for="phone">Phone:</label><br>
        <input type="text" id="phone" name="phone" required>
        <span id="phoneError" style="color: red;"></span><br>
        <br>
        <input type="submit" value="Submit">
    </form>
    </div>
    
    <script>
    function validatePhoneNumber() {
        var phoneInput = document.getElementById("phone");
        var phoneError = document.getElementById("phoneError");
      
        var phonePattern = /^\d{10}$/;
        
        if (!phonePattern.test(phoneInput.value)) {
            phoneError.textContent = "Please enter a valid 10-digit phone number.";
            phoneInput.focus(); 
            return false;
        } else {
            phoneError.textContent = ""; 
            return true;
        }
    }
</script>
</body>
</html>