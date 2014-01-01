package com.docmanager.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.dao.DocManageDao;
import com.docmanager.entity.Doc;

public class DocManageDaoImpl extends HibernateDaoSupport implements DocManageDao {


	@Override
	public int addDoc(Doc doc){
		Serializable id = this.getHibernateTemplate().save(doc);
		return id!=null?(Integer) id:0;
	}

	@Override
	public Doc getDocByUser(int userId) {
		// TODO Auto-generated method stub
		String hql = "from Doc where User='" + userId + "'";
 		List<Doc> list = this.getHibernateTemplate().find(hql);
 		if(!list.isEmpty())
 			return list.get(0);
 		return null;

	}

	@Override
	public List<Doc> getDocs(int userId) {
		// TODO Auto-generated method stub
		List<Doc> docList = new ArrayList<Doc>();
		Iterator<Doc> iterator = this.getHibernateTemplate().find("from Doc").iterator();
		while(iterator.hasNext()){
			docList.add(iterator.next().clone());
		}
		return docList;
	}

	@Override
	public int updateDoc(Doc doc) {
		doc.setDocId(4);
		this.getHibernateTemplate().update(doc);
		return 1;
	}

	@Override
	public Doc getDocById(int docId) {
		Object object = this.getHibernateTemplate().get(Doc.class, docId);
		return object!=null?(Doc) object:new Doc();
	}

}
