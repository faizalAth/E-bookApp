package com.dao;

import com.entity.User;

public interface UserDao {

	public boolean saveUser(User user);
	public User loginUser(String email,String password);
}
