package com.docmanager.entity;

public class Relation {
	private String name;
	private String description;
	public Relation(){
		
	}
	
	public Relation(String name, String description){
		this.name = name;
		this.description = description;
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
	
	public Relation clone(){
		return new Relation(name, description);
	}
}
