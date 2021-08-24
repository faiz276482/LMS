<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>Course Name</b></td>
<td><b>Course ID</b></td>
<td><b>Course Resources</b></td>
<td><b>Course Description</b></td>
<td><b>Course Fees</b></td>
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
<tr bgcolor="#8FBC8F">

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