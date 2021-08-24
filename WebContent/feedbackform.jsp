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

<h3>Contact Form</h3>

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
