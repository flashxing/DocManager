package com.docmanager.dao;

import java.util.List;

import com.docmanager.entity.Relation;

public interface RelationDao {
	public boolean add(Relation relation);
	public void delete(Relation relation);
	public void update(Relation relation);
	public Relation getRelation(String name);
	public List<Relation> getAllRelations();
}
