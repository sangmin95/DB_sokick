/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.35
 * Generated at: 2018-12-19 21:04:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Typify by TEMPLATED</title>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("<!--[if lte IE 8]><script src=\"frontend/assets/js/ie/html5shiv.js\"></script><![endif]-->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"frontend/assets/css/main.css\" />\r\n");
      out.write("<!--[if lte IE 9]><link rel=\"stylesheet\" href=\"frontend/assets/css/ie9.css\" /><![endif]-->\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"frontend/css/main.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("\thref=\"frontend/fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div margin-top=\"1px\" align=\"right\">\r\n");
      out.write("\t\t<button style=\"color: white; opacity: 0.5;\"\r\n");
      out.write("\t\t\tonclick=\"location.href='Modify.jsp'\">\r\n");
      out.write("\t\t\t<strong style=\"color: black;\">회원 수정</strong>\r\n");
      out.write("\t\t</button>\r\n");
      out.write("\t\t<button style=\"color: white; opacity: 0.5;\"\r\n");
      out.write("\t\t\tonclick=\"location.href='Logout.jsp'\">\r\n");
      out.write("\t\t\t<strong style=\"color: black;\">로그 아웃</strong>\r\n");
      out.write("\t\t</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- Banner -->\r\n");
      out.write("\t<section id=\"banner\"\r\n");
      out.write("\t\tstyle=\"background-image: url('frontend/images/icons/mainImage1.png'); -webkit-background-size: cover; background-size: cover;\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<h2 style=\"opacity: 0;\">\r\n");
      out.write("\t\t\t<strong>d</strong>\r\n");
      out.write("\t\t</h2>\r\n");
      out.write("\t\t<p style=\"opacity: 0;\">!!!</p>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<ul class=\"actions\">\r\n");
      out.write("\t\t\t<li><a href=\"frontend/reservation.html\" class=\"button special\"\r\n");
      out.write("\t\t\t\tstyle=\"background-color: #57b846; opacity: 0;\"></a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t<section\r\n");
      out.write("\t\tstyle=\"-webkit-background-size: cover; background-size: cover; align-content: center\">\r\n");
      out.write("\t\t<h2 style=\"opacity: 0;\">\r\n");
      out.write("\t\t\t<strong>아직도 걸어다니세요?</strong>\r\n");
      out.write("\t\t</h2>\r\n");
      out.write("\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\t\t\t<button class=\"login100-form-btn\"\r\n");
      out.write("\t\t\t\tstyle=\"align-items: center; width: 40%;\"\r\n");
      out.write("\t\t\t\tonclick=\"location.href='frontend/check.html'\">\r\n");
      out.write("\t\t\t\t<span><strong style=\"color: white; font-size: 20px;\">지금\r\n");
      out.write("\t\t\t\t\t\t바로 대여하러가기!</strong></span>\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t");

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

				if (count == 1) {
      out.write("\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<center><strong>현재 대여중인 킥보드가 있습니다.</strong></center>\r\n");
      out.write("\t\t\t\t");
 
				} else {
      out.write("\r\n");
      out.write("\t\t\t\t<center><strong>현재 대여중인 킥보드가 없습니다.</strong></center>\r\n");
      out.write("\t\t\t\t");
	
				}

				conn.commit();
				conn.setAutoCommit(true);
				stmt.close();
				conn.close();
			} catch (Exception e) {
				System.err.println("sql error = " + e.getMessage());
			}
		
      out.write("\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\t\t\t<button class=\"login100-form-btn\"\r\n");
      out.write("\t\t\t\tstyle=\"align-items: center; width: 20%; opacity: 0.8;\"\r\n");
      out.write("\t\t\t\tonclick=\"location.href='Ret.jsp'\">\r\n");
      out.write("\t\t\t\t<span><strong style=\"color: white; font-size: 15px;\">반납하기</strong></span>\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\t<!-- One -->\r\n");
      out.write("\t<section id=\"one\" class=\"wrapper special\">\r\n");
      out.write("\t\t<div class=\"inner\">\r\n");
      out.write("\t\t\t<header class=\"major\">\r\n");
      out.write("\t\t\t\t<h2>\r\n");
      out.write("\t\t\t\t\t<span>SOKICK</span>이 처음이세요?\r\n");
      out.write("\t\t\t\t</h2>\r\n");
      out.write("\t\t\t</header>\r\n");
      out.write("\t\t\t<div class=\"features\">\r\n");
      out.write("\t\t\t\t<div class=\"feature\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-diamond\"></i>\r\n");
      out.write("\t\t\t\t\t<h3>저렴한 가격</h3>\r\n");
      out.write("\t\t\t\t\t<p>SOKICK의 저렴한 가격에 놀라지 마세요!</p>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"feature\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-copy\"></i>\r\n");
      out.write("\t\t\t\t\t<h3>편리한 위치</h3>\r\n");
      out.write("\t\t\t\t\t<p>각 정류소의 정보를 확인해보세요.</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"feature\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-paper-plane-o\"></i>\r\n");
      out.write("\t\t\t\t\t<h3>대여하기</h3>\r\n");
      out.write("\t\t\t\t\t<p>SOKICK만의 편리한 UI로 빠르게 대여해보세요.</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"feature\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-save\"></i>\r\n");
      out.write("\t\t\t\t\t<h3>대여 현황 확인</h3>\r\n");
      out.write("\t\t\t\t\t<p>각 정류소의 대여 현황을 간편하게 확인해보세요.</p>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"feature\">\r\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-envelope-o\"></i>\r\n");
      out.write("\t\t\t\t\t<h3>Contact</h3>\r\n");
      out.write("\t\t\t\t\t<p>SOKICK 불편한 점을 관리자에게 부담없이 말해주세요.</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Scripts -->\r\n");
      out.write("\t<script src=\"frontend/assets/js/jquery.min.js\"></script>\r\n");
      out.write("\t<script src=\"frontend/assets/js/skel.min.js\"></script>\r\n");
      out.write("\t<script src=\"frontend/assets/js/util.js\"></script>\r\n");
      out.write("\t<!--[if lte IE 8]><script src=\"frontend/assets/js/ie/respond.min.js\"></script><![endif]-->\r\n");
      out.write("\t<script src=\"frontend/assets/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
