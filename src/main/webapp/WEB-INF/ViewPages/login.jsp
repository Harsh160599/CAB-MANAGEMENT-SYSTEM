<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body, html {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            background-image: url('https://t3.ftcdn.net/jpg/05/09/31/46/360_F_509314659_dNdiDnWo9CSc0iVV6VoRy7bnXq6EW31X.jpg');
            background-repeat: no-repeat; 
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            font-family: Arial, sans-serif; /* Set a generic font family */
            display: flex; /* Use flexbox to center content */
            justify-content: center;
            align-items: center;
            text-align: center;
            margin-left:80px;
        }

h1{
color:white;
    font-size: 40px;
    padding: 0px;
    margin: 0px;
    text-align: center;
    position: absolute;
    top: 26%;
    left: 27%;
    transform:translateX(-50%);
  text-shadow: 0 0px 10px #03030a,0 0 10px #03030a,0 0 10px #03030a,0 0 10px #03030a ;
}
form {
       width:400px;
       height:300px;
       padding: 20px;
       border: 1px solid #dad1d1;
       border-radius: 8px;
       box-shadow: 0 10px 25px rgba(0, 0, 0, 0.97);
       background-color: rgba(9, 10, 10, 0.544);
       position:absolute;
       top:35%;
       left:14%;
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
    input[type="password"] {
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
</head>
<body>
  <h1>Login</h1>
    <form action="/login" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>