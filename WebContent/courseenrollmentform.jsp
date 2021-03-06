<!DOCTYPE html>
<%
        String admin=(String)session.getAttribute("admin");
        
        //redirect user to login page if not logged in
        if(admin==null){
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
<body style="background-image:url('img4.jpg');background-size:cover;background-repeat:no repeat;">
<h1 style="text-align:center;color:white;">E-Learning</h1>

<!-- Navigation -->
<div class="topnav">
  <a  href="AdminSuccess.jsp">Home</a>
  <a href="showuser.jsp">Show user</a>
  <a href="showFeedback.jsp">Show feedback</a>
  <a class="active" href="courseenrollmentform.jsp">Add Courses</a>
  <a href="showEnrolledCourses.jsp">Courses</a>
  <a href="showcontact.jsp">Contact Details</a>
  <a href="deleteuser.jsp">Remove User</a>
  <a href="logout.jsp">Log out</a>
</div>



<div class="container">
<h3>Course Enrollment Details Form</h3>
  <form action="CourseEnrollmentController.jsp" method="post">
    <label for="id">Course ID</label>
    <input type="text" id="fname" name="id" placeholder="CourseID">

    <label for="name">Course Name</label>
    <input type="text" id="lname" name="name" placeholder="Your name..">
    <label for="email">Course Resource</label>
    <input type="text" id="lname" name="courseres" placeholder="github.com">
    <label for="email">Course Description</label>
    <input type="text" id="lname" name="cordesc" placeholder="Java for beginer">
    <label for="email">Course Fee</label>
    <input type="text" id="lname" name="corfee" placeholder="INR.4599">
   
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
