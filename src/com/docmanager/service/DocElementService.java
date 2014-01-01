package com.docmanager.service;

import java.util.List;

import com.docmanager.entity.DocElement;

public interface DocElementService {
	public int addDocElement(String name);
	public int updateDocElement(int id, String name);
	public int deleteDocElement(int id, String name);
	public List<DocElement> getAllDocElements();
}
