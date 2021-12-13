package com.company.dbmanager;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Milk
 */
@WebServlet("/Milk")
public class Milk extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Milk() { super();  }
	public void init(ServletConfig config) throws ServletException { }
	public void destroy() { }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = "select * from milk order by mno desc";
		DBManager db = new DBManager();
		String result = "";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result += "<tr><td>" + rset.getInt("mno") +"</td><td>"+ rset.getString("mname") 
						+ "</td><td>" + rset.getInt("mprice")+"</td></tr>";
				
			}
			
			request.setAttribute("result", result);
			request.getRequestDispatcher("/milks.jsp").forward(request, response);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rset != null){try{rset.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt != null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn != null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  }

}
