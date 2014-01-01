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
	 * ��ȡ�Ự����
	 * @return SessionFactory
	 */
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public static void setSessionFactory(SessionFactory sessionFactory){
		HibernateUtil.sessionFactory = sessionFactory;
	}
	/**
	 * ����һ���Ự������
	 * @return Session
	 */
	public static Session getSession() {
		return sessionFactory.openSession();
	}
	
	/**
	 * �رջỰ
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
