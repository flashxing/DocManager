package com.docmanager.dao;

import java.util.List;

import com.docmanager.entity.DocMeta;

public interface DocMetaDao {
	

	public int addDocMeta(DocMeta docMeta);
	public DocMeta getDocMeta(String type);
	public List<DocMeta> getDocMetas();
	public int updateDocMeta(DocMeta docMeta);
	public int deleteDocMeta(DocMeta docMeta);
}
