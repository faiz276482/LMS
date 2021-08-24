<%@ page import ="java.sql.*" %>
<html>
<style>
html, body, div, p, ul, li {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
  font-family: 'Roboto', sans-serif;
  font-weight: 100;
}

.center-screen {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  min-height: 100vh;
}

/* This class is applied to the containing div <div class="nav"> and is used to set the background color and height of the navbar */
.nav {
  background: #000;
  height: 60px; /* set same as height & line-height below */
}

/* This rule centers the nav items verticaly in the bar with the height and line height properties. Spacing between the nav items is controlled by setting right and left padding.  */
.nav li {
  display: inline-block;
  list-style: none;
  height: 60px; /* should be the same as line-height */
  line-height: 60px; /* should be the same as height */
  padding: 0 40px; /* "0" sets top and bottom padding to none */
}

/* :hover allows you change the background color of the nav items when you mouse over them. Play around with the transition value to change the speed of the hover transition. */
.nav li:hover {
  background: red;
  transition: background .3s;
}

/* This rule is applied to the link <a> tag. It lets you turn off the link underline and set the link text color. */
.nav-link {
  color: #fff;
  text-decoration: none;
}
</style>
<%
    String email =request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where email='" + email + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        //out.println("welcome " + email);
        //out.println("<a href='logout.jsp'>Log out</a>");
        
        out.println("<div class='nav'><li><a class='nav-link' href='showuser.jsp'>Users</a></li><li><a class='nav-link' href='showcontact.jsp'>Contact</a></li><li><a class='nav-link' href='showFeedback.jsp'>Feedback</a></li><li><a class='nav-link' href='showEnrolledCourses.jsp'>Courses</a></li><li><a class='nav-link' href='Admin.jsp'>Log out</a></li></div>");
    } else {
        out.println("Invalid password <a href='Admin.jsp'>try again</a>");
    }
%>

<%out.println("<div align='centre' class='center-screen'><h1>Welcome "+email+"</h1></div>");%>
</html>