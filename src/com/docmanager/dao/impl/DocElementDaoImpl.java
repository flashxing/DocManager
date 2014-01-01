package com.docmanager.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.dao.DocElementDao;
import com.docmanager.entity.DocElement;

public class DocElementDaoImpl extends HibernateDaoSupport implements DocElementDao {

	@Override
	public int addDocElement(DocElement docElement) {
		Serializable id = this.getHibernateTemplate().save(docElement);
		return id!=null?1:0;
	}

	@Override
	public int updateDocElement(DocElement docElement) {
		this.getHibernateTemplate().update(docElement);
		return 1;
	}

	@Override
	public int deleteDocElement(DocElement docElement) {
		this.getHibernateTemplate().delete(docElement);
		return 1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DocElement> getDocElements() {
		List<DocElement> list = new ArrayList<DocElement>();
		Iterator<DocElement> iterator = this.getHibernateTemplate().find("from DocElement").iterator();
		while(iterator.hasNext()){
			list.add(iterator.next().clone());
		}
		return list;
	}
	
}
