<html>
    <head>
        <title>Login System</title>
    </head>
 
    <body>
        <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email!=null){
         response.sendRedirect("success1.jsp");
        }
        else{
         response.sendRedirect("logout.jsp");
         }
        
        %>
    
        <p>Welcome <%=email%></p>    
        <a href="logout.jsp">Logout</a>
    </body>
</html>