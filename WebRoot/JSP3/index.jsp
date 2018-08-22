<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:forward page="login.jsp">
	<jsp:param value="frank" name="userName" />
	<jsp:param value="123456" name="passWord" />
</jsp:forward>
forward下面的不会被执行