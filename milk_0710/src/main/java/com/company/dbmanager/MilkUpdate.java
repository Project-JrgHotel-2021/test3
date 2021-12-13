package com.company.dbmanager;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MilkUpdate")
public class MilkUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MilkUpdate() { super(); }
	public void init(ServletConfig config) throws ServletException { }
	public void destroy() { }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String mno = request.getParameter("mno");
		String mprice = request.getParameter("mprice");
		
		DBManager db = new DBManager();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = "select * from milk where mno = ? and mprice = ?";
		
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mno);
			pstmt.setString(2,mprice);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				request.setAttribute("bno", rset.getInt("bno"));
				request.setAttribute("mprice", rset.getInt("mprice"));
				
				
			}
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rset != null){try{rset.close();}catch(Exception e){e.printStackTrace();}}
			if(pstmt != null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn != null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		*/	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String mno = request.getParameter("mno");
		String mprice = request.getParameter("mprice");
		
		PrintWriter out = response.getWriter();
		
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		String sql = "update milk set mprice = ? where mno = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mprice);
			pstmt.setString(2,mno);
			
			
			int result = pstmt.executeUpdate();
			if (result > 0) {
				out.println("<script>alert('수정성공');location.href='Milk'</script>");
				
			}else {
				out.println("<script>alert('관리자 문의'); location.href='Milk'</script>");
			}
			
			
		}catch(Exception e) {
    		e.printStackTrace();
    	}finally {
    		if(pstmt != null) {try{pstmt.close();}catch(Exception e) {e.printStackTrace();}}
    		if(conn != null) {try{conn.close();}catch(Exception e) {e.printStackTrace();}}
    	}
		
		
	}

}
