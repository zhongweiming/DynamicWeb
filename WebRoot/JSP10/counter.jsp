<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'counter.jsp' starting page</title>

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
		Object obj = application.getAttribute("counter");
		if (obj == null) {
			application.setAttribute("counter", new Integer(1));
			out.print("该页面被访问了1次<br/>");
		} else {
			int counterValue = Integer.parseInt(obj.toString());
			counterValue++;
			out.print("该页面被访问了" + counterValue + "次");
			application.setAttribute("counter", counterValue);
		}
	%>
</body>
</html>
