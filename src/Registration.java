import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import code.DBConnection;


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
HttpServletResponse response)
		throws ServletException, IOException
	{
		try {

			
			Connection con = DBConnection.initializeDatabase();

			
			PreparedStatement st = con
				.prepareStatement("insert into user1 values(?, ?, ?, ?, ?,?,?,?)");

			
			st.setString(1,null);

			st.setString(2, request.getParameter("name"));
			st.setInt(3, Integer.parseInt(request.getParameter("phone")));
             
			st.setString(4, request.getParameter("email"));
			st.setString(5, request.getParameter("address"));
			st.setDate(6,java.sql.Date.valueOf(java.time.LocalDate.now()));
			
			st.setString(7, request.getParameter("password"));
			st.setString(8, request.getParameter("upload_photo"));

			
			st.executeUpdate();

			
			st.close();
			con.close();

			
			PrintWriter out = response.getWriter();
			out.println("<html><body><b>Successfully Inserted"
						+ "</b></body></html>");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
