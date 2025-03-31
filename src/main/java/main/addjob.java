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
 * Servlet implementation class addjob
 */
@WebServlet("/addjob")
public class addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addjob() {
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
		String title = request.getParameter("title");
		String disp = request.getParameter("disp");
		int arange1 = Integer.parseInt(request.getParameter("arange1"));
		int arange2 = Integer.parseInt(request.getParameter("arange2"));
		String sq = request.getParameter("squalities");
		int exrange = Integer.parseInt(request.getParameter("exrange"));

		Connection con = DbConnection.connect();
		 
		try {
		PreparedStatement	pstmt = con.prepareStatement("insert into job values(?,?,?,?,?,?,?)");
		
		pstmt.setInt(1, 0);
		pstmt.setString(2, title);
		pstmt.setString(3, disp);
		pstmt.setInt(4, arange1);
		pstmt.setInt(5, arange2);
		pstmt.setString(6, sq);
		pstmt.setInt(7, exrange);
		int i = pstmt.executeUpdate(); 
		if(i>0) {
			response.sendRedirect("addjob.jsp");
		}else {
			response.sendRedirect("404.html");
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}