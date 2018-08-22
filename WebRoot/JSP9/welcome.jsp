<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <% if(session.getAttribute("userName")!=null){ %>
  欢迎：<%= session.getAttribute("userName") %>
  <a href="logout.jsp">注销</a>
  <br/>
  <%}else{ %>
 请先登录
 <a href="login.jsp">登录</a>
 <% } %>
 
 <% if(session.isNew()){ %>
 <br/>
 欢迎新用户！
 <%}else{ %>
 欢迎老用户！
 <% } %>
  </body>
</html>
