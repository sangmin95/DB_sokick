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
<%request.setCharacterEncoding("UTF-8");%>
<%
	String departure = (String)request.getParameter("departure");
	String destination = (String)request.getParameter("destination");
    String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
	String user = "sokick";
	String pass = "sokick";

	Connection conn = null;
	String sql = null;
	String insertSql = null;
	String query = null;
	String sid = null;
	String password = null;
	String sname = null;
	String phonenumber = null;
	int kid = 0;
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
		
		sid = (String)session.getAttribute("sid");
		sql = "select * from kickboard where sno = (select sno from station where address = '"+departure+"')";
		System.out.println(sql);
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			kid = rs.getInt("kid");
			break;
		}
		insertSql = "insert into rents values('"+ sid +"',"+ kid +",(select sno from station where address = '"+destination+"'))";
		System.out.println(insertSql);
		count = stmt.executeUpdate(insertSql);
		
		response.sendRedirect("main.jsp");
		
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