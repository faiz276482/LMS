<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
int id=Integer.valueOf(request.getParameter("id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM user1 WHERE user_id="+id);
out.println("Data is successfully Deleted!&nbsp;<a href='AdminSuccess.jsp'>Ok</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
