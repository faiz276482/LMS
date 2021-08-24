import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import code.DBConnection;


@WebServlet("./ContactDetailsInsert")
public class ContactDetailsInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
HttpServletResponse response)
		throws ServletException, IOException
	{
		try {

			
			Connection con = DBConnection.initializeDatabase();

			
			PreparedStatement st = con
				.prepareStatement("insert into contact values(?, ?, ?, ?, ?,?)");

			
			st.setInt(6, Integer.valueOf(request.getParameter("id")));
			st.setInt(1, Integer.valueOf(request.getParameter("userid")));

			st.setString(2, request.getParameter("string"));
             
			st.setString(3, request.getParameter("email"));
			st.setLong(4, Long.parseLong(request.getParameter("phone")));
			st.setString(5, request.getParameter("message"));

			
			st.executeUpdate();

			
			st.close();
			con.close();

			
			PrintWriter out = response.getWriter();
			out.println("<html><body><b>Successfully Inserted"
						+ "</b></body></html>");
			//response.sendRedirect("login.jsp");  
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
