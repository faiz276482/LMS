<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body style="background-image:url('img4.jpg');background-size:cover;background-repeat:no repeat;">
<h1 style="text-align:center;color:white;">E-Learning</h1>

<!-- Navigation -->
<div class="topnav">
  <a href="index.jsp" class="w3-button w3-bar-item">Home</a>
  <a class="active" href="registration.jsp" class="w3-button w3-bar-item">Register</a>
  <a href="login.jsp" class="w3-button w3-bar-item">LogIn</a>
   <a href="Admin.jsp" class="w3-button w3-bar-item">Admin</a>
</div>
    <!-- Give Servlet reference to the form as an instances 
    GET and POST services can be according to the problem statement-->
    <!--<form action="./Registration" method="post">
        <p>Name:</p> 
        <input type="text" name="name"/>
        <br/>
        <br/>
        <p>Phone:</p> 
        <input type="text" name="phone"/>
        <br/>
        <br/>
        <p>Email:</p> 
        <input type="text" name="email"/>
        <br/>
        <p>Address:</p> 
        <input type="text" name="address"/>
        <br/>
        <br/>
       
        <p>Password:</p> 
        <input type="text" name="password"/>
        <br/>
        <br/>
        <p>Profile pic:</p> 
        <input type="file" accept="image/*"name="upload_photo"/>
        <br/>
        <br/>
        <br/><br/>
        <input type="submit"/>
    </form>-->
    
    <form action="./InsertData" method="post">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Will Smith" name="name" id="psw" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Bai.Alin@amdocs.com" name="email" id="email" required>
    <label for="address"><b>Address</b></label>
    <input type="text" placeholder="Winden" name="address" id="address" required>
    <label for="phone"><b>Phone</b></label>
    <input type="text" placeholder="9588963256" name="phone" id="phone" required>
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="*****" name="password" id="psw" required>
    <label for="upload_photo"><b>Password</b></label>
    <input type="file" accept="image/*" name="upload_photo"/>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
  </div>
</form>
</body>
</html>