package com.javaweb.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.javaweb.entity.User;
import com.javaweb.dao.UserDao;

public class UserDaoImpl implements UserDao{

	@Override
	public ResultSet get(Connection conn, User user) throws SQLException {
		// TODO Auto-generated method stub
		PreparedStatement ps = conn.prepareStatement("select * from ");
		return ps.executeQuery();
	}


}
