package com.javaweb.service;

import com.javaweb.dao.UserDao;
import com.javaweb.daoimpl.UserDaoImpl;
import com.javaweb.entity.User;
import java.sql.*;
public class CheckUserService {
	private UserDao userDao=new UserDaoImpl();
	public boolean check(User user){
		Connection conn=null;
		conn=Connec
	}
}
