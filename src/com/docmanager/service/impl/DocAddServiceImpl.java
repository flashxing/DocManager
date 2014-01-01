package com.docmanager.service.impl;

import java.util.List;

import com.docmanager.dao.DocManageDao;
import com.docmanager.entity.Doc;
import com.docmanager.service.DocAddService;

public class DocAddServiceImpl implements DocAddService {
	
	DocManageDao docManageDao;
	
	public void setdocManageDao(DocManageDao docManageDao) {
		this.docManageDao= docManageDao;
	}

	@Override
	public int addDoc(String type, String title, String author,
			String time, String publisher, String docAbstract, String key,String url) {
		// TODO Auto-generated method stub
		Doc doc = new Doc(type, title, author,0,0,time,"", publisher, docAbstract, key, url, 0);
		return docManageDao.addDoc(doc);
	}

	@Override
	public List<Doc> getDocsByUserId(int userId) {
		// TODO Auto-generated method stub
		return docManageDao.getDocs(userId);
	}

	@Override
	public int updateDoc(Doc doc) {
		// TODO Auto-generated method stub
		return docManageDao.updateDoc(doc);
	}

	@Override
	public int updateDoc(String type, String title, String author,
			String time, String publisher, String docAbstract, String key,
			String url, int year, String pages) {
		// TODO Auto-generated method stub
		//System.out.println(author+"gkfds");
		Doc doc = new Doc(type, title, author,year,0,time,pages, publisher, docAbstract, key, url, 0);
		doc.setDocId(4);
		docManageDao.updateDoc(doc);
		return 0;
	}

	@Override
	public Doc getDocById(int docId) {
		// TODO Auto-generated method stub
		return docManageDao.getDocById(docId);
	}
}
