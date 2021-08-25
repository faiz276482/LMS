<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
int id=Integer.valueOf(request.getParameter("id"));
int userid=Integer.valueOf(request.getParameter("userid"));
String name=request.getParameter("string");
String email =request.getParameter("email");
int phone =Integer.valueOf(request.getParameter("phone"));
String message=request.getParameter("message");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into contact(contact_id,user_id,name,email,Phone_no,Messege)values('"+id+"','"+userid+"','"+name+"','"+email+"','"+phone+"','"+message+"')");
out.println("Data is successfully inserted!<a href='successs1.jsp'>Back</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
