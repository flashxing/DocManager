package com.docmanager.entity;

public class DocMeta {
	private String type;
	private String content;
	
	public DocMeta(){
		this.type = "";
		this.content = "";
	}
	
	public DocMeta(String type, String content){
		this.type = type;
		this.content = content;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public DocMeta clone(){
		return new DocMeta(type, content);
	}
}
