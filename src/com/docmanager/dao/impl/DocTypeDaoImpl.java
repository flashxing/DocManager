package com.docmanager.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.entity.DocType;
import com.docmanager.dao.DocTypeDao;

public class DocTypeDaoImpl extends HibernateDaoSupport implements DocTypeDao{
	
	@Override
	public boolean add(DocType docType) {
		// TODO Auto-generated method stub
		Serializable id = this.getHibernateTemplate().save(docType);
		return id != null;
	}

	@Override
	public void delete(DocType docType) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(docType);
	}

	@Override
	public void update(DocType docType) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(docType);
	}

	@Override
	public DocType getDocType(String type) {
		// TODO Auto-generated method stub
		Object object = this.getHibernateTemplate().get(DocType.class, type);
		if(object != null){
			return (DocType) object;
		}
		return new DocType();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DocType> getAllDocs() {
		// TODO Auto-generated method stub
		List<DocType> list = new ArrayList<DocType>();
		Iterator<DocType> iterator = this.getHibernateTemplate().find("from DocType").iterator();
		while(iterator.hasNext()){
			list.add(iterator.next().clone());
		}
		return list;
	}

}
