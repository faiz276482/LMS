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
<h2 align="center"><font color="#FF00FF"><strong>ContactDetails</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>ContactId</b></td>
<td><b>UserID</b></td>
<td><b>Name</b></td>
<td><b>Email </b></td>
<td><b>Phone</b></td>
<td><b>Message</b></td>
</tr>
<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM contact";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("contact_id")%></td>
<td><%=resultSet.getString("user_id")%></td>
<td><%=resultSet.getString("name")%></td>
<td><%=resultSet.getString("Email")%></td>
<td><%=resultSet.getString("Phone_no")%></td>
<td><%=resultSet.getString("Messege")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>