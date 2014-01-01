package com.docmanager.dao;

import java.util.List;

import com.docmanager.entity.Doc;

public interface DocManageDao {
	

	public int addDoc(Doc doc);
	public Doc getDocByUser(int userId);
	public List<Doc> getDocs(int userId);
	public int updateDoc(Doc doc);
	public Doc getDocById(int docId);
}
