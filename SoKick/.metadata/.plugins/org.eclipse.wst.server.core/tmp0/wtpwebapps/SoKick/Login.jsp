<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> Login </title>
</head>
<body>
 
    <%
        // 현재 로그인된 아이디가 없다면 (= session에 저장된 id가 없다면)
        if(session.getAttribute("sid") == null) {
            %>
            <h1> KNU SOKICK </h1> 
            <br /> <form action="LoginCheck.jsp" method="post">
            <br />
            <br /> <input name="input_id" type="text">
            <br />
            <br /> <input name="input_pw" type="password"> <button> 로그인 </button>
            <br /> </form>
            <br /> <button onClick="location.href='Register.jsp'"> 회원가입 </button>
            <%
        } 
        // 현재 로그인된 아이디가 있다면 (= session에 저장된 id가 있다면)
        else {
            out.print(session.getAttribute("sname") + " 님 환영합니다");           
            %>
            <br /> <button onClick="location.href='Main.jsp'"> 확인 </button>
            <%
        }
    %>
    
 
</body>
</html>