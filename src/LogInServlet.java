import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LogInServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        

    	

        try {
        	int userid = Integer.parseInt(request.getParameter("id"));    
            String pwd = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/demoprj", "root", "shubham"); 

            PreparedStatement ps = c.prepareStatement("select * from user where id= '"+userid+"' and password='"+pwd+"'");
            //ps.setInt(1, Integer.valueOf(request.getParameter("id")));
            //ps.setString(2, request.getParameter("password"));

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                response.sendRedirect("success.jsp");
                return;
            }
            response.sendRedirect("error.jsp");
            return;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

}