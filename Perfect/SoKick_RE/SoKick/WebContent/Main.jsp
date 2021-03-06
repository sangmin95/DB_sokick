<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Typify by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="frontend/assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="frontend/assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="frontend/assets/css/ie9.css" /><![endif]-->

<link rel="stylesheet" type="text/css" href="frontend/css/main.css">
<link rel="stylesheet" type="text/css"
	href="frontend/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div margin-top="1px" align="right">
		<button style="color: white; opacity: 0.5;"
			onclick="location.href='Modify.jsp'">
			<strong style="color: black;">회원 수정</strong>
		</button>
		<button style="color: white; opacity: 0.5;"
			onclick="location.href='Logout.jsp'">
			<strong style="color: black;">로그 아웃</strong>
		</button>
	</div>

	<!-- Banner -->
	<section id="banner"
		style="background-image: url('frontend/images/icons/mainImage1.png'); -webkit-background-size: cover; background-size: cover;">


		<h2 style="opacity: 0;">
			<strong>d</strong>
		</h2>
		<p style="opacity: 0;">!!!</p>
		<br>
		<br>
		<br>
		<ul class="actions">
			<li><a href="frontend/reservation.html" class="button special"
				style="background-color: #57b846; opacity: 0;"></a></li>
		</ul>
		<br>
		<br>
		<br>
		<br>
	</section>

	<br>
	<br>

	<section
		style="-webkit-background-size: cover; background-size: cover; align-content: center">
		<h2 style="opacity: 0;">
			<strong>아직도 걸어다니세요?</strong>
		</h2>

		<center>
			<button class="login100-form-btn"
				style="align-items: center; width: 40%;"
				onclick="location.href='frontend/check.html'">
				<span><strong style="color: white; font-size: 20px;">지금
						바로 대여하러가기!</strong></span>
			</button>
		</center>


		<%
			String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
			String user = "sokick";
			String pass = "sokick";

			Connection conn = null;
			String sql = null;
			String query = null;
			String sid = null;
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

				sql = "select * from rents where sid = '" + sid + "'";
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					count++;
				}

				if (count != 0) {%>
				<br>
				<br>
				<br>
				
				<center><strong>현재 대여중인 킥보드가 있습니다.</strong></center>
				<% 
				} else {%>
				<br>
				<br>
				<br>
				<center><strong>현재 대여중인 킥보드가 없습니다.</strong></center>
				<%	
				}

				conn.commit();
				conn.setAutoCommit(true);
				stmt.close();
				conn.close();
			} catch (Exception e) {
				System.err.println("sql error = " + e.getMessage());
			}
		%>
		<center>
			<button class="login100-form-btn"
				style="align-items: center; width: 20%; opacity: 0.8;"
				onclick="location.href='Ret.jsp'">
				<span><strong style="color: white; font-size: 15px;">반납하기</strong></span>
			</button>
		</center>
	</section>

	<!-- One -->
	<section id="one" class="wrapper special">
		<div class="inner">
			<header class="major">
				<h2>
					<span>SOKICK</span>이 처음이세요?
				</h2>
			</header>
			<div class="features">
				<div class="feature">
					<i class="fa fa-diamond"></i>
					<h3>저렴한 가격</h3>
					<p>SOKICK의 저렴한 가격에 놀라지 마세요!</p>
					<br>
					<br>
				</div>
				<div class="feature">
					<i class="fa fa-copy"></i>
					<h3>편리한 위치</h3>
					<p>각 정류소의 정보를 확인해보세요.</p>
				</div>
				<div class="feature">
					<i class="fa fa-paper-plane-o"></i>
					<h3>대여하기</h3>
					<p>SOKICK만의 편리한 UI로 빠르게 대여해보세요.</p>
				</div>
				<div class="feature">
					<i class="fa fa-save"></i>
					<h3>대여 현황 확인</h3>
					<p>각 정류소의 대여 현황을 간편하게 확인해보세요.</p>
					<br>
					<br>
				</div>
				<div class="feature">
					<i class="fa fa-envelope-o"></i>
					<h3>Contact</h3>
					<p>SOKICK 불편한 점을 관리자에게 부담없이 말해주세요.</p>
				</div>
			</div>
		</div>
	</section>


	<!-- Scripts -->
	<script src="frontend/assets/js/jquery.min.js"></script>
	<script src="frontend/assets/js/skel.min.js"></script>
	<script src="frontend/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="frontend/assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="frontend/assets/js/main.js"></script>

</body>
</html>