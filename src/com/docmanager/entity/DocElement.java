package com.docmanager.entity;

public class DocElement {
	private int id;
	private String name;
	
	public DocElement(){
		
	}
	
	public DocElement(int id , String name){
		this.id = id;
		this.name = name;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public DocElement clone(){
		return new DocElement(id, name);
	}
}
