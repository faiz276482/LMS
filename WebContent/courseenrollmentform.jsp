<!DOCTYPE html>
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
</style>
</head>
<body>

<h3>Course Enrollment Details Form</h3>

<div class="container">
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
