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
	RequestDispatcher rd = null;
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
			sname = rs.getString("sname");
			password = rs.getString("password");
			phone = rs.getString("phone");
		}
		
		if(count == 1)
		{
			loginError = 0;
			session.setAttribute("loginError",loginError);
			session.setAttribute("sid",sid);
			session.setAttribute("password",password);
			session.setAttribute("sname",sname);
			session.setAttribute("phone",phone);
			response.sendRedirect("Main.jsp");
		}
		else
		{
			loginError = 1;
			session.setAttribute("loginError",loginError);
			response.sendRedirect("Login.jsp");
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