
<%@ page import = "java.sql.*" %>

<%

	Connection conn = null;
	String driver = "com.mysql.jdbc.Driver";	
	String url = "jdbc:mysql://localhost:3306/milsoo";
	
	Class.forName(driver);
	conn = DriverManager.getConnection (url, "root", "1234");

%>