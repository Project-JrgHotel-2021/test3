<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	String user = "ouser";
	String pass = "1111";
	String url  = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		conn  = DriverManager.getConnection(url,user,pass);
		if(conn!= null){   out.println("db연동성공!");}
	}catch(Exception e){e.printStackTrace();}

%>