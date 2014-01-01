package com.docmanager.service.impl;

import java.util.List;
import java.util.Map;

import com.docmanager.dao.DocMetaDao;
import com.docmanager.entity.DocMeta;
import com.docmanager.service.DocMetaService;
import com.docmanager.util.MapUtil;

public class DocMetaServiceImpl implements DocMetaService{
	
	private DocMetaDao docMetaDao;

	@Override
	public int addDocMeta(String docType, String[] docElementsId, String[] docMetas) {
		Map<String, String> map = MapUtil.generateMapFromArray(docElementsId, docMetas);
		DocMeta docMeta = new DocMeta(docType, MapUtil.packageString(map));
		return docMetaDao.addDocMeta(docMeta);
	}

	@Override
	public List<DocMeta> getDocMetaList() {
		// TODO Auto-generated method stub
		return docMetaDao.getDocMetas();
	}

	@Override
	public int updateDocMeta(String docType, String[] docMetas) {
		// TODO Auto-generated method stub
		Map<String, String> map = MapUtil.generateMapFromArray(docMetas);
		DocMeta docMeta = new DocMeta(docType, MapUtil.packageString(map));
		return docMetaDao.updateDocMeta(docMeta);
	}

	@Override
	public int deleteDocMeta(String type) {
		DocMeta docMeta = new DocMeta();
		docMeta.setType(type);
		return docMetaDao.deleteDocMeta(docMeta);
	}

	public DocMetaDao getDocMetaDao() {
		return docMetaDao;
	}

	public void setDocMetaDao(DocMetaDao docMetaDao) {
		this.docMetaDao = docMetaDao;
	}
	
}
