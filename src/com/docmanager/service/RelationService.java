package com.docmanager.service;

import java.util.List;

import com.docmanager.entity.Relation;

public interface RelationService {
	
	public boolean addRelation(String name, String decription);
	
	public List<Relation> getAllRelations();
	
	public void updateRelation(String name, String decription);
	
	public void deleteRelation(String name);
}
