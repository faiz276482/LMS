<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
        String admin=(String)session.getAttribute("admin");
        
        //redirect user to login page if not logged in
        if(admin==null){
         response.sendRedirect("logout.jsp");
         }
        
        %>
<html>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
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

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "LMS";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<body style="background-image:url('img4.jpg');background-size:cover;background-repeat:no repeat;">
<h1 style="text-align:center;color:white;">E-Learning</h1>

<!-- Navigation -->
<div class="topnav">
  <a  href="AdminSuccess.jsp">Home</a>
  <a href="showuser.jsp">Show user</a>
  <a class="active" href="showFeedback.jsp">Show feedback</a>
  <a href="courseenrollmentform.jsp">Add Courses</a>
  <a href="showEnrolledCourses.jsp">Courses</a>
  <a href="showcontact.jsp">Contact Details</a>
  <a href="deleteuser.jsp">Remove User</a>
  <a href="logout.jsp">Log out</a>
</div>
<h2 align="center"><font color="#FFF"><strong>User Feedbacks</strong></font></h2>
<table align="center" id="customers" cellpadding="4" cellspacing="4">
<tr>
<th><b>Feedback Id</b></th>
<th><b>Name</b></th>
<th><b>Email</b></th>
<th><b>User ID </b></th>
<th><b>Feedback</b></th>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM feedback";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("f_id")%></td>
<td><%=resultSet.getString("name")%></td>
<td><%=resultSet.getString("email")%></td>
<td><%=resultSet.getString("user_id")%></td>
<td><%=resultSet.getString("feedback")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>