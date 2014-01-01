package com.docmanager.service.impl;

import java.util.List;

import com.docmanager.dao.DocElementDao;
import com.docmanager.entity.DocElement;
import com.docmanager.service.DocElementService;

public class DocElementServiceImpl implements DocElementService{
	private DocElementDao docElementDao;
	@Override
	public int addDocElement(String name) {
		// TODO Auto-generated method stub
		DocElement docElement = new DocElement();
		docElement.setName(name);
		return docElementDao.addDocElement(docElement);
	}

	@Override
	public int updateDocElement(int id, String name) {
		DocElement docElement = new DocElement(id, name);
		return docElementDao.updateDocElement(docElement);
	}

	@Override
	public int deleteDocElement(int id, String name) {
		// TODO Auto-generated method stub
		DocElement docElement = new DocElement(id, name);
		return docElementDao.deleteDocElement(docElement);
	}

	@Override
	public List<DocElement> getAllDocElements() {
		// TODO Auto-generated method stub
		return docElementDao.getDocElements();
	}

	public DocElementDao getDocElementDao() {
		return docElementDao;
	}

	public void setDocElementDao(DocElementDao docElementDao) {
		this.docElementDao = docElementDao;
	}

}
