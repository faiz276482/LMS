<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
int id=Integer.valueOf(request.getParameter("id"));
String name=request.getParameter("name");
String courseResource =request.getParameter("courseres");
String courseDescription =request.getParameter("cordesc");
int fees=Integer.valueOf(request.getParameter("corfee"));


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into course(c_name,course_id,c_resource,c_desp,c_fees)values('"+name+"','"+id+"','"+courseResource+"','"+courseDescription+"','"+fees+"')");
out.println("Data is successfully inserted!&nbsp;<a href='showEnrolledCourses.jsp'>Show courses</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
