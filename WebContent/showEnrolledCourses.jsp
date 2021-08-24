<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<h2 align="center"><font color="#FF00FF"><strong>Course Data</strong></font></h2>
<table align="center" id="customers" cellpadding="4" cellspacing="4">

<tr bgcolor="#008000">
<th><b>Course Name</b></th>
<th><b>Course ID</b></th>
<th><b>Course Resources</b></th>
<th><b>Course Description</b></th>
<th><b>Course Fees</b></th>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM course";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr>

<td><%=resultSet.getString("c_name")%></td>
<td><%=resultSet.getString("course_id")%></td>
<td><%=resultSet.getString("c_resource")%></td>
<td><%=resultSet.getString("c_desp")%></td>
<td><%=resultSet.getString("c_fees")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</html>