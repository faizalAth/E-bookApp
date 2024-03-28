package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.entity.User;

public class UserDaoImpl implements UserDao{

	private Connection conn;
	
	public UserDaoImpl(Connection conn) {
		this.conn=conn;
	}
	
	@Override
	public boolean saveUser(User user) {
		boolean flag = false;
		
		String query="insert into user(firstName,lastName,mobile,email,password,agree,role) values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1,user.getFirstName());
			preparedStatement.setString(2,user.getLastName());
			preparedStatement.setString(3,user.getMobile());
			preparedStatement.setString(4,user.getEmail());
			preparedStatement.setString(5,user.getPassword());
			preparedStatement.setString(6,user.getCondition());
			preparedStatement.setString(7,user.getRole());
			
			if( preparedStatement.executeUpdate() == 1 ) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}

	@Override
	public User loginUser(String email, String password) {
		
//		String query = "select * from user where email='"+email+"' and password='"+password+"' ";
		String query = "select * from user where email= ? and password= ? ";
		User user = new User();
		try {
//			Statement statement = conn.createStatement();
//			ResultSet rs = statement.executeQuery(query);
			
			PreparedStatement statement = conn.prepareStatement(query);
			statement.setString(1,email);
			statement.setString(2,password);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()) {
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setMobile(rs.getString("mobile"));
				user.setRole(rs.getString("role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}

}
