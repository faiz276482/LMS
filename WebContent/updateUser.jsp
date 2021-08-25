<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "LMS";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from user1 where userid="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update Data</h1>
<form method="post" action="updateUserControll.jsp">
<input type="hidden" name="id" value="<%=resultSet.getInt("user_id") %>">
<input type="text" name="id" value="<%=resultSet.getInt("user_id") %>">
<br>
Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
Phone:<br>
<input type="text" name="phone" value="<%=resultSet.getInt("Phone_no") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>