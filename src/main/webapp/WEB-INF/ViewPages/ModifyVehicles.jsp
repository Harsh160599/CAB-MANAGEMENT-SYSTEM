<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
         div {
        background-color:#20a6db;
         }
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
       left:36%;
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
    input[type="number"] {
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
</style>
<body>
 <h1>Modify Vehicle</h1>
    <form action="${pageContext.request.contextPath}/update/${vehicle.vid}" method="post">
        <input type="hidden" name="_method" value="PUT">
        <label for="vechName">Vehicle Name:</label>
        <input type="text" id="vechName" name="vechName" value="${vehicle.vechName}" required><br>
        
        <label for="vechNo">Vehicle Number:</label>
        <input type="text" id="vechNo" name="vechNo" value="${vehicle.vechNo}" required><br>
        
        <label for="ownerName">Owner Name:</label>
        <input type="text" id="ownerName" name="ownerName" value="${vehicle.ownerName}" required><br>
        
        <label for="seats">Seats:</label>
        <input type="number" id="seats" name="seats" value="${vehicle.seats}" required><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${vehicle.phone}" required><br>
        
        <input type="submit" value="Update">
    </form>
</body>
</html>