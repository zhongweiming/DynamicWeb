package com.javaweb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7344542820509917027L;

//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String userName = req.getParameter("userName");
//		String password = req.getParameter("password");
//
//		System.out.println("用户名：" + userName);
//		System.out.println("密码：" + password);
//
//	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		System.out.println("======进入get页面======");
		System.out.println("用户名：" + userName);
		System.out.println("密码：" + password);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		System.out.println("======进入post页面======");
		System.out.println("用户名：" + userName);
		System.out.println("密码：" + password);
		String forward = null;
		if("zhongweiming".equals(userName)&&"123456".equals(password)){
			//请求转发
			forward = "/JSP15/success.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(forward);
			rd.forward(req, resp);
			
			//请求重定向
			//resp.sendRedirect(req.getContextPath()+"/JSP15/success.jsp");
		}else {
			//请求转发
			forward = "/JSP15/error.jsp";
			//forward = "http://baidu.com";//不能跳转到外部页面
			RequestDispatcher rd = req.getRequestDispatcher(forward);
			rd.forward(req, resp);
			
			//请求重定向
			//resp.sendRedirect(req.getContextPath()+"/JSP15/error.jsp");
		}
	}

}
