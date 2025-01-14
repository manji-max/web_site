package reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "Kavishan@1234");
		    PreparedStatement pst = con.prepareStatement("insert into web1 (uname,uemail,upwd,umobile) values(?,?,?,?)");
		 
		    pst.setString(1,uname);
		    pst.setString(2,uemail);
		    pst.setString(3,upwd);
		    pst.setString(4,umobile);
		    
		    int rowCount = pst.executeUpdate();
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    
		    if(rowCount>0)
		    {
		    	request.setAttribute("status","success");
		    	
		    	
		    }
		    else
		    {
		    	request.setAttribute("status","failed");
		
		    	
		    }
		    
		    dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}