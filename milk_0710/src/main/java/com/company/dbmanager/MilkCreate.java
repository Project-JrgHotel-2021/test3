package com.company.dbmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MilkCreate
 */
@WebServlet("/MilkCreate")
public class MilkCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MilkCreate() {
        super();
    }

	public void init(ServletConfig config) throws ServletException { }
	public void destroy() { }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mname = request.getParameter("mname");
		String mprice = request.getParameter("mprice");
		
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		PrintWriter out = response.getWriter();
		
		String sql = "insert into milk(mno, mname, mprice) values (seq_milk.nextval,?,?)";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mname);
			pstmt.setString(2, mprice);
			
			int result = pstmt.executeUpdate();
			
			if(result > 0) {
				out.println("<script>alert('우유추가 성공'); location.href='Milk'</script>");
			}else {
				out.println("<script>alert('관리자 문의'); location.href ='Milk'</script>");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			if(pstmt != null){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
			if(conn != null){try{conn.close();}catch(Exception e){e.printStackTrace();}}
		}
		
		
		

		
	}

}
