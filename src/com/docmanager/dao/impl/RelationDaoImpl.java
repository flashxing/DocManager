package com.docmanager.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.docmanager.dao.RelationDao;
import com.docmanager.entity.Relation;

public class RelationDaoImpl extends HibernateDaoSupport implements RelationDao{

	@Override
	public boolean add(Relation relation) {
		Serializable id = this.getHibernateTemplate().save(relation);
		return id != null;
	}

	@Override
	public void delete(Relation relation) {
		this.getHibernateTemplate().delete(relation);
	}

	@Override
	public void update(Relation relation) {
		this.getHibernateTemplate().update(relation);
	}

	@Override
	public Relation getRelation(String name) {
		Object object = this.getHibernateTemplate().get(Relation.class, name);
		if(object != null){
			return (Relation) object;
		}
		return new Relation();
	}

	@Override
	public List<Relation> getAllRelations() {
		List<Relation> list = new ArrayList<Relation>();
		@SuppressWarnings("unchecked")
		Iterator<Relation> iterator = this.getHibernateTemplate().find("from Relation").iterator();
		while(iterator.hasNext()){
			list.add(iterator.next().clone());
		}
		return list;
	}

}
