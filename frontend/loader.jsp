<%@ page language="java" contentType="text/plain; charset=utf-8"
   pageEncoding="utf-8"%>
<%
String method = request.getMethod();
if ("GET".equals(method)){
   out.println("can't access!");
} else {
   String inpt = request.getParameter("param");
   out.println("당신, '" + inpt + "' 라고 썼습니다.");
}
%>