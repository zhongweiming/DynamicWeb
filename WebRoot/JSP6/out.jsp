<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page buffer="10kb"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'out.jsp' starting page</title>
    
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
  	<%
  		out.println("实际页面不会换行，只会在代码里换行");
  		out.print("xixi");
  		out.newLine();
  		out.print("<br />");
  		out.flush();
  		out.clearBuffer();
  		//out.clear();
  		out.print("获取当前缓冲区大小(默认8kb，可自定义)"+out.getBufferSize());
  		out.print("剩余缓冲区大小"+out.getRemaining());
  	 %>
  </body>
</html>
