package com.docmanager.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class HibernateUtil {

	private static SessionFactory sessionFactory;
//	
//	static {
//		try {
//			Configuration cfg = new Configuration().configure();
//		//	ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
//					.applySettings(cfg.getProperties()).buildServiceRegistry();
//			factory = cfg.buildSessionFactory(serviceRegistry);
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	/**
	 * 获取会话工厂
	 * @return SessionFactory
	 */
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public static void setSessionFactory(SessionFactory sessionFactory){
		HibernateUtil.sessionFactory = sessionFactory;
	}
	/**
	 * 开启一个会话并返回
	 * @return Session
	 */
	public static Session getSession() {
		return sessionFactory.openSession();
	}
	
	/**
	 * 关闭会话
	 * @param session
	 */
	public static void closeSession(Session session){
		if(session != null){
			if(session.isOpen()){
				session.close();
			}
		}
	}
}
