<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<body>
	<%
	String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
	String user = "sokick";
	String pass = "sokick";

	Connection conn = null;
	String findsql = null;
	String sql = null;
	String query = null;
	String sid = null;
	String password = null;
	String sname = null;
	String phone = null;
	int count = 0;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		System.err.println("error = " + e.getMessage());
		System.exit(1);
	}

	try {
		conn = DriverManager.getConnection(url, user, pass);
	} catch (SQLException e) {
		System.err.println("sql error = " + e.getMessage());
		System.exit(1);
	}

	try {
		conn.setAutoCommit(false);

		Statement stmt = conn.createStatement();
		ResultSet rs = null;
		
		String sendid = request.getParameter("input_id");
		String sendname = request.getParameter("input_name");
		String sendpass = request.getParameter("input_pw");
		String sendphone = request.getParameter("input_phone");

		
		
		sql = "update student set sid = '"+sendid+"', password = '"+ sendpass +"', sname = '"+ sendname + "', phonenumber = '" + sendphone +"' where sid = '" + sendid +"'";
		count = stmt.executeUpdate(sql);
		response.sendRedirect("frontend/login.html");
		
		
		conn.commit();
		conn.setAutoCommit(true);
		stmt.close();
		conn.close();
	} catch (Exception e) {
		System.err.println("sql error = " + e.getMessage());
	}
%>
</body>
</body>
</html>