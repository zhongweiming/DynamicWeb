<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String userName=request.getParameter("userName");
	String password=request.getParameter("password");
	if(userName!=null&&password!=null){
	session.setAttribute("userName", userName);
	response.setHeader("refresh", "2;URL=welcome.jsp");
	}
 %>
