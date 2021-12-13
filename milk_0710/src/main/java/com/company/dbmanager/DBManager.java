package com.company.dbmanager;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DBManager {
	private Connection conn;

	public DBManager() { super(); }

	public Connection getConn() { return conn; }
	public void setConn(Connection conn) { this.conn = conn; }
	
	public Connection getConnection() {
		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource db = (DataSource)envContext.lookup("jdbc/sinnvoll");
			conn = db.getConnection();
			if(conn!=null) {System.out.println("DBCP연동 성공!");}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
		
	}
	
	

}
