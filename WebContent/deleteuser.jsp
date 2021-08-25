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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Remove User</title>
</head>
<body style="background-image:url('img4.jpg');background-size:cover;background-repeat:no repeat;">
<h1 style="text-align:center;color:white;">E-Learning</h1>

<!-- Navigation -->
<div class="topnav">
  <a  href="AdminSuccess.jsp">Home</a>
  <a href="showuser.jsp">Show user</a>
  <a href="showFeedback.jsp">Show feedback</a>
  <a href="courseenrollmentform.jsp">Add Courses</a>
  <a href="showEnrolledCourses.jsp">Courses</a>
  <a href="showcontact.jsp">Contact Details</a>
  <a class="active"  href="deleteuser.jsp">Remove User</a>
  <a href="logout.jsp">Log out</a>
</div>
<div class="container">
<h3>Remove user Form</h3>
  <form action="deletecontrol.jsp" method="post">
  	<label for="id">User ID</label>
    <input type="text" id="fname" name="id" placeholder="User ID o be deleted">

	<input type="submit" value="Delete">
	</form>
	</div>
</body>
</html>