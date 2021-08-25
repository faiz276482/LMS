<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
        String admin=(String)session.getAttribute("admin");
        
        //redirect user to login page if not logged in
        if(admin==null){
         response.sendRedirect("logout.jsp");
         }
        
        %>

<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<style>
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
  <a class="active" href="#home">Home</a>
  <a href="showuser.jsp">Show user</a>
  <a href="showFeedback.jsp">Show feedback</a>
  <a href="courseenrollmentform.jsp">Add Courses</a>
  <a href="showEnrolledCourses.jsp">Courses</a>
  <a href="showcontact.jsp">Contact Details</a>
  <a href="deleteuser.jsp">Remove User</a>
  <a href="logout.jsp">Log out</a>
</div>
<center><h1 style="color:white;">Welcome to E-Learning Portal</h1></center>
<!-- Slide Show -->


</body>
</html>

