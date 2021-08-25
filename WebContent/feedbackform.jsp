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
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
  <a class="active" href="feedbackform.jsp">Feedback</a>
  <a href="contactform.jsp">Add Contact Details</a>
  <a href="logout.jsp">Log out</a>
</div>

<h3 style="color:white;">Contact Form</h3>

<div class="container">
  <form action="FeedbackController.jsp" method="post">
    <label for="id">Feedback ID</label>
    <input type="text" id="fname" name="id" placeholder="FeedbackId">

    <label for="name">Name</label>
    <input type="text" id="lname" name="name" placeholder="Your name..">
    <label for="email">Email</label>
    <input type="text" id="lname" name="email" placeholder="email@gmail.com">
    <label for="email">UserID</label>
    <input type="text" id="lname" name="userid" placeholder="UserID">

    <label for="country">Feedback</label>
    <select id="country" name="feedback">
      <option value="satisfactory">Satisfactory</option>
      <option value="Good">Good</option>
      <option value="Awesome">Awesome</option>
    </select>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
