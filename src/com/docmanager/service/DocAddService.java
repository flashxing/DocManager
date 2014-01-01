package com.docmanager.service;

import java.util.List;

import com.docmanager.entity.Doc;

public interface DocAddService {
	
	public int addDoc(String type, String title, String author,
			String time, String publisher, String docAbstract, String key,
			String url);
	
	public List<Doc> getDocsByUserId(int userId);
	
	public int updateDoc(Doc doc);

	public int updateDoc(String type, String titleName, String author,
			String time, String publisher, String docAbstract, String key,
			String url, int year, String pages);

	public Doc getDocById(int docId);
}
