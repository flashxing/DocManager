package com.docmanager.service;

import java.util.List;

import com.docmanager.entity.DocType;

public interface DocTypeService {
	
	public boolean addDocType(String type, String decription);
	
	public List<DocType> getAllDocTypes();
	
	public void updateDocType(String type, String decription);
	
	public void deleteDocType(String type);
}
