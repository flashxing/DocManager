package com.docmanager.dao;

import java.util.List;

import com.docmanager.entity.DocElement;

public interface DocElementDao {
	public int addDocElement(DocElement docElement);
	public int updateDocElement(DocElement docElement);
	public int deleteDocElement(DocElement docElement);
	public List<DocElement> getDocElements();
}
