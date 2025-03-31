package main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addhr
 */
@WebServlet("/addhr")
public class addhr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addhr() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobileno = request.getParameter("mobileno");
		String pass = request.getParameter("pass");
		String desi = request.getParameter("desi");

		Connection con = DbConnection.connect();
		 
		try {
		PreparedStatement	pstmt = con.prepareStatement("insert into hr values(?,?,?,?,?,?)");
		
		pstmt.setInt(1, 0);
		pstmt.setString(2, name);
		pstmt.setString(3, email);
		pstmt.setString(4, mobileno);
		pstmt.setString(5, pass);
		pstmt.setString(6, desi);
		int i = pstmt.executeUpdate(); 
		if(i>0) {
			response.sendRedirect("addhr.html");
		}else {
			response.sendRedirect("404.html");
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
