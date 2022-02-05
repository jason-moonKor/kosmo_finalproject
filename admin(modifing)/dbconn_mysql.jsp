
    
<%@ page import = "java.sql.*" %>

<%

	Connection con = null;
	String driver = "com.mysql.jdbc.Driver";			
	String url = "jdbc:mysql://localhost:3306/admin";	
	
	Class.forName(driver);
	con = DriverManager.getConnection (url, "root", "1234");

%>
