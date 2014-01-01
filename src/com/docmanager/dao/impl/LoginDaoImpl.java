package com.docmanager.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.entity.User;
import com.docmanager.dao.LoginDao;

public class LoginDaoImpl extends HibernateDaoSupport implements LoginDao {

	@Override
	public User findUserByName(String name) {
		String hql = "from User where name='" + name + "'";
 		List<User> list = this.getHibernateTemplate().find(hql);
 		if(!list.isEmpty())
 			return list.get(0);
 		return null;
	}

	@Override
	public User findUserByID(int uid) {
		User user = (User) this.getHibernateTemplate().get(User.class, uid);
		return new User(user);
	}

}
