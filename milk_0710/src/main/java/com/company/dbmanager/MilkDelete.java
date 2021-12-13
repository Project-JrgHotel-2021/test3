package com.company.dbmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MilkDelete
 */
@WebServlet("/MilkDelete")
public class MilkDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MilkDelete() { super(); }
	public void init(ServletConfig config) throws ServletException { }
	public void destroy() { }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		DBManager db = new DBManager();
		PrintWriter out = response.getWriter();
		
		String mno = request.getParameter("mno");
		
		String sql = "delete from milk where mno = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mno);
			
			int result = pstmt.executeUpdate();
			if(result > 0) {
				out.println("<script>alert('삭제성공'); location.href = 'Milk'</script>");				
				
			}else {
				 out.println("<script>alert('관리자 문의'); location.href='Milk'</script>");
				 
			 }
					
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rset != null){try{rset.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt != null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn != null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		
		
		
		
	
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
		
		
	}

}
