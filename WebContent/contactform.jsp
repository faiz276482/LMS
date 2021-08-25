<!DOCTYPE html>
<%
        String user=(String)session.getAttribute("user");
        
        //redirect user to login page if not logged in
        if(user==null){
         response.sendRedirect("logout.jsp");
         }
        
        %>
<html>
<head>
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
<body>
<body style="background-image:url('img4.jpg');background-size:cover;background-repeat:no repeat;">
<h1 style="text-align:center;color:white;">E-Learning</h1>

<!-- Navigation -->
<div class="topnav">
  <a  href="success1.jsp">Home</a>
  <!--<a href="index.jsp">Register</a>-->
  <a href="showEnrolledCoursesUsers.jsp">Courses</a>
  <a href="feedbackform.jsp">Feedback</a>
  <a class="active" href="contactform.jsp">Add Contact Details</a>
  <a href="logout.jsp">Log out</a>
</div>

<form action="./contactController.jsp" method="post">
  <div class="container">
    <h1>Contact Details</h1>
    <p>Please fill in this form to create contact details.</p>
    <hr>

    <label for="id"><b>Contact ID</b></label>
    <input type="text" placeholder="Enter ID" name="id" id="id" required>
    <label for="userid"><b>UserID</b></label>
    <input type="text" placeholder="UserID" name="userid" id="userid" required>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Will Smith" name="string" id="psw" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Bai.Alin@amdocs.com" name="email" id="email" required>
    
    <label for="phone"><b>Phone</b></label>
    <input type="text" placeholder="9588963256" name="phone" id="phone" required>
    <label for="password"><b>Message</b></label>
    <input type="text" placeholder="Dear.........." name="message" id="psw" required>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Add</button>
  </div>
</form>

</body>
</html>
