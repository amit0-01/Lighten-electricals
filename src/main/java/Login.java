

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.*;
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/restaurent","root","");
			
			Statement stmt = conn.createStatement();
			if(request.getParameter("option").equals("Admin"))
			{
			ResultSet rs=stmt.executeQuery("select * from admin where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'");
			if(rs.next())
			{
				
				response.sendRedirect("adminprofile.jsp");
				HttpSession session=request.getSession();
				session.setAttribute("name", rs.getString("username"));
			}
			else
			{
				
				response.sendRedirect("creerr.jsp");}
				
				
			}
			else
			{
				ResultSet rs=stmt.executeQuery("select * from customer where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'");
				if(rs.next())
				{
					HttpSession session=request.getSession();
					session.setAttribute("name", rs.getString("firstname"));
					response.sendRedirect("customerprofile.jsp");
				
				}
				else
				{response.sendRedirect("creerr.jsp");}
				
			}
			
		}
		catch(Exception e)
		{
			out.println(e);
			
		}
		
	}

}
