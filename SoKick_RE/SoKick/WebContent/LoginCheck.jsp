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
	String sql = null;
	String query = null;
	String sid = null;
	String password = null;
	String sname = null;
	String phone = null;
	int loginError;
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
		String sendpass = request.getParameter("input_pw");
		
		sql = "select * from student where sid = '" + sendid +"' and password = '" + sendpass + "'";
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			count++;
			sid = rs.getString("sid");
		}
		
		if(count == 1)
		{
			loginError = 0;
			session.setAttribute("loginError",loginError);
			session.setAttribute("sid",sid);
			response.sendRedirect("frontend/main.html");
		}
		else
		{
			loginError = 1;
			session.setAttribute("loginError",loginError);
			response.sendRedirect("frontend/login.html");
		}
		
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