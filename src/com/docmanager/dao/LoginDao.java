package com.docmanager.dao;

import com.docmanager.entity.User;

public interface LoginDao {
	
	public User findUserByName(String name);
	public User findUserByID(int uid);
	
}
