package com.docmanager.service;

import java.util.List;

import com.docmanager.entity.DocMeta;

public interface DocMetaService {
	public int addDocMeta(String docType, String[] docElementsId, String[] docMetas);
	public List<DocMeta> getDocMetaList();
	public int updateDocMeta(String docType, String[] docMetas);
	public int deleteDocMeta(String type);
}
