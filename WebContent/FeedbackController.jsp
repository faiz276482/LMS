<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
int id=Integer.valueOf(request.getParameter("id"));
String name=request.getParameter("name");
String email =request.getParameter("email");
int userid=Integer.valueOf(request.getParameter("userid"));
String feedback=request.getParameter("feedback");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demoprj", "root", "shubham");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into feedback(feedbackid,name,email,userid,feedback)values('"+id+"','"+name+"','"+email+"','"+userid+"','"+feedback+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
