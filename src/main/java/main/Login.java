package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		
		if(request.getParameter("lrole").equals("Admin")){
			
		
		Connection con = DbConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("select * from admin where username=? and password=?");
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				
				Value.setID(rs.getInt(1));
				response.sendRedirect("admindash.html");
			}else {
				
				response.sendRedirect("Login.jsp");
			}
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
		if(request.getParameter("lrole").equals("HR") ) {
			
			Connection con = DbConnection.connect();
			try {
				PreparedStatement pstmt = con.prepareStatement("select * from hr where email=? and pass=?");
				pstmt.setString(1, email);
				pstmt.setString(2, pass);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					Value.setID(rs.getInt(1));
					response.sendRedirect("hrdashbord.jsp");
				}else {
					response.sendRedirect("Login.jsp");
				}
			
				
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
		
			
			
			}
		
			if(request.getParameter("lrole").equals("Candidate") ) {
			
			Connection con = DbConnection.connect();
			try {
				PreparedStatement pstmt = con.prepareStatement("select * from candidate where email=? and password=?");
				pstmt.setString(1, email);
				pstmt.setString(2, pass);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					Value.setID(rs.getInt(1));
					response.sendRedirect("candidatedash.jsp");
					
				}else {
					
					response.sendRedirect("Login.jsp");
				}
			
				
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
			
			
			
			}
			
		
			
	}

}
