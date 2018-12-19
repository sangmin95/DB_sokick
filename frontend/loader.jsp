
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
	String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
	String user = "sokick";
	String pass = "sokick";

	Connection conn = null;
	String sql = null;
	String query = null;
   String gate = null;
   int available=0;
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

      gate = request.getParameter("input_gate");
      if(gate == "북문"){
         location = 1;
      }
      else if(gate == "서문"){
         location = 2;
      }
      else if(gate == "동문"){
         location = 5;
      }
      else if(gate == "쪽문"){
         location = 3;
      }
      else if(gate == "정문"){
         location = 4;
      }
      else error;
      out.printf("location = %d",location);
		sql = "select count_kickboards from station where sno = " + location;
		rs = stmt.executeQuery(sql);
		
      while(rs.next()){
			available = rs.getInt("count_kickboards");
		}
      out.println("available = %d\n",available);

		response.sendRedirect("state_result.jsp?gate="+gate+"&available"+available);
	
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