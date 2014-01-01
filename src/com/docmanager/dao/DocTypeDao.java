package com.docmanager.dao;

import java.util.List;

import com.docmanager.entity.DocType;

public interface DocTypeDao {
	public boolean add(DocType docType);
	public void delete(DocType docType);
	public void update(DocType docType);
	public DocType getDocType(String type);
	public List<DocType> getAllDocs();
}
