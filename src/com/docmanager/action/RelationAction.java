package com.docmanager.action;

import java.util.List;

import com.docmanager.entity.Relation;
import com.docmanager.service.RelationService;
import com.opensymphony.xwork2.ActionSupport;

public class RelationAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 324067702112903804L;
	private String name;
	private String description;
	private List<Relation> relations;
	private RelationService relationService;
	
	public String addRelation() throws Exception{
		boolean result = relationService.addRelation(name, description);
		if (result){
			return "success";
		}
		return "failure";
	}
	
	public String updateRelation() throws Exception{
		relationService.updateRelation(name, description);
		return "success";
	}
	
	public String deleteRelation() throws Exception{
		relationService.deleteRelation(name);
		return "success";
	}
	
	public String getAllRelations() throws Exception{
		relationService.getAllRelations();
		return "success";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Relation> getRelations() {
		return relations;
	}

	public void setRelations(List<Relation> relations) {
		this.relations = relations;
	}

	public RelationService getRelationService() {
		return relationService;
	}

	public void setRelationService(RelationService relationService) {
		this.relationService = relationService;
	}
	
}
