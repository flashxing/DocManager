package com.docmanager.service.impl;

import com.docmanager.dao.LoginDao;
import com.docmanager.entity.User;
import com.docmanager.service.LoginService;

public class LoginServiceImpl implements LoginService {
	
	LoginDao loginDao;
	
	@Override
	public boolean findUser(String name, String password) {
		User user = loginDao.findUserByName(name);
		System.out.println(user.getPassword()+" "+password);
		if(user == null||!password.equals(user.getPassword()))
			return false;
	    return true;
	}

	
	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}
}
