package com.docmanager.action;

import java.util.List;

import com.docmanager.entity.DocType;
import com.docmanager.service.DocTypeService;
import com.opensymphony.xwork2.ActionSupport;

public class DocTypeAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8452544017228037793L;
	private String type;
	private String description;
	private List<DocType> docTypes;
	private DocTypeService docTypeService;
	
	public String addDocType() throws Exception{
		System.out.println("here type is:");
		System.out.println(type+" "+description);
		boolean result = docTypeService.addDocType(type, description);
		if (result){
			return "success";
		}
		return "failure";
	}
	
	public String updateDocType() throws Exception{
		docTypeService.updateDocType(type, description);
		return "success";
	}
	
	public String deleteDocType() throws Exception{
		docTypeService.deleteDocType(type);
		return "success";
	}
	
	public String getAllDocTypes() throws Exception{
		docTypes = docTypeService.getAllDocTypes();
		return "success";
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<DocType> getDocTypes() {
		return docTypes;
	}
	public void setDocTypes(List<DocType> docTypes) {
		this.docTypes = docTypes;
	}

	public DocTypeService getDocTypeService() {
		return docTypeService;
	}

	public void setDocTypeService(DocTypeService docTypeService) {
		this.docTypeService = docTypeService;
	}
	
	
	
}
