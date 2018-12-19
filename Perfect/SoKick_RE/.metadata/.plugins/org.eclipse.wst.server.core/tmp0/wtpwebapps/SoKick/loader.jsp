
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
   	int location;
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
      System.out.println(gate);
      if(gate.equals("북문(A)")){
         location = 1;
      }
      else if(gate.equals("서문(B)")){
         location = 2;
      }
      else if(gate.equals("동문(E)")){
         location = 5;
      }
      else if(gate.equals("쪽문(C)")){
         location = 3;
      }
      else if(gate.equals("정문(D)")){
         location = 4;
      }
      else location = -1;
      System.out.println("location = "+ location);
      sql = "select count_kickboards from station where sno = " + location;
      
      rs = stmt.executeQuery(sql);
      while(rs.next()){
			available = rs.getInt("count_kickboards");
		}
      System.out.println("available = "+ available);
      
      response.sendRedirect("state_result.jsp?gate="+location+"&available="+available);
		
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