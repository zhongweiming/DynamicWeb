<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
  <form action="/JSP7/do_register.jsp" method="post">
     用户名：<input type="text" name="userName">
     <br>
     技能：
     <input type="checkbox" name="skills" value="java" />java
     <input type="checkbox" name="skills" value="python" />python
     <input type="checkbox" name="skills" value="c" />c
     <input type="checkbox" name="skills" value="c#" />c#
     <br />
     <input type="submit" value="提交" />
       </form>
  </body>
</html>
