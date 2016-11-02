<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>
<%
	Connection con = null;
	ResultSet set = null;
	try {
/* 		String url="jdbc:mariadb://localhost:33060/test";
		String id = "jspid";
		String pw = "jsppass";	
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, id, pw); */
		
		
 		Context initCtx = new InitialContext(); 
		Context envCtx = (Context) initCtx.lookup("java:comp/env"); 
		DataSource ds = (DataSource)envCtx.lookup("jdbc/TestDB"); 
		con = ds.getConnection(); 
		if (con != null) 
	 	{
	 		out.println("MariaDB Connected <br>");
	 		con.close();
	 	}
	 } catch(Exception e) {out.println(e); }
%>