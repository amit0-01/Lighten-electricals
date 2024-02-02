

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
			
			Statement stmt = conn.createStatement();
			String firstname=request.getParameter("firstname");
			String lastname=request.getParameter("lastname");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			stmt.executeUpdate("insert into customer values('"+firstname+"','"+lastname+"','"+username+"','"+password+"')");
			response.sendRedirect("index.html");
		}
		catch(Exception e)
		{}
		
	}

}
