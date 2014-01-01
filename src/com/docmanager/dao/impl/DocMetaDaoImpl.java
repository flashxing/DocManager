package com.docmanager.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.dao.DocMetaDao;
import com.docmanager.entity.DocMeta;

public class DocMetaDaoImpl extends HibernateDaoSupport implements DocMetaDao {

	@Override
	public int addDocMeta(DocMeta docMeta) {
		Serializable id = this.getHibernateTemplate().save(docMeta);
		return id!=null?1:0;
	}

	@Override
	public DocMeta getDocMeta(String type) {
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DocMeta> getDocMetas() {
		List<DocMeta> list = new ArrayList<DocMeta>();
		Iterator<DocMeta> iterator = this.getHibernateTemplate().find("from DocMeta").iterator();
		while(iterator.hasNext()){
			list.add(iterator.next().clone());
		}
		return list;
	}

	@Override
	public int updateDocMeta(DocMeta docMeta) {
		this.getHibernateTemplate().update(docMeta);
		return 1;
	}

	@Override
	public int deleteDocMeta(DocMeta docMeta) {
		this.getHibernateTemplate().delete(docMeta);
		return 1;
	}
	
}
