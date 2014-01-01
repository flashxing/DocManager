package com.docmanager.service.impl;

import java.util.List;

import com.docmanager.dao.DocTypeDao;
import com.docmanager.entity.DocType;
import com.docmanager.service.DocTypeService;

public class DocTypeServiceImpl implements DocTypeService {
	
	private DocTypeDao docTypeDao;

	public DocTypeDao getDocTypeDao() {
		return docTypeDao;
	}

	public void setDocTypeDao(DocTypeDao docTypeDao) {
		this.docTypeDao = docTypeDao;
	}

	@Override
	public boolean addDocType(String type, String decription) {
		// TODO Auto-generated method stub
		DocType docType = new DocType(type, decription);
		return docTypeDao.add(docType);
	}

	@Override
	public List<DocType> getAllDocTypes() {
		// TODO Auto-generated method stub
		return docTypeDao.getAllDocs();
	}

	@Override
	public void updateDocType(String type, String decription) {
		// TODO Auto-generated method stub
		DocType docType = new DocType(type, decription);
		docTypeDao.update(docType);
	}

	@Override
	public void deleteDocType(String type) {
		// TODO Auto-generated method stub
		DocType docType = new DocType();
		docType.setType(type);
		docTypeDao.delete(docType);
	}
}
