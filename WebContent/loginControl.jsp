<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user1 where email='" + email + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        //out.println("welcome " + email);
        //out.println("<a href='logout.jsp'>Log out</a>");
        
        out.println("<html><h1>Welcome "+email+"</h1><a href='contactform.jsp'>Add Contact Details</a><a href='logout.jsp'>Log out</a></html>");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>