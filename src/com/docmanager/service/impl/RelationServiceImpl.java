package com.docmanager.service.impl;

import java.util.List;

import com.docmanager.dao.RelationDao;
import com.docmanager.entity.Relation;
import com.docmanager.service.RelationService;

public class RelationServiceImpl implements RelationService{
	
	private RelationDao relationDao;
	
	public RelationServiceImpl(){
		
	}
	
	@Override
	public boolean addRelation(String name, String description) {
		// TODO Auto-generated method stub
		Relation relation = new Relation(name, description);
		return relationDao.add(relation);
	}

	@Override
	public List<Relation> getAllRelations() {
		// TODO Auto-generated method stub
		return relationDao.getAllRelations();
	}

	@Override
	public void updateRelation(String name, String description) {
		// TODO Auto-generated method stub
		Relation relation = new Relation(name, description);
		relationDao.update(relation);
	}

	@Override
	public void deleteRelation(String name) {
		// TODO Auto-generated method stub
		Relation relation = new Relation();
		relation.setName(name);
		relationDao.delete(relation);
	}

	public RelationDao getRelationDao() {
		return relationDao;
	}

	public void setRelationDao(RelationDao relationDao) {
		this.relationDao = relationDao;
	}
	
}
