package com.docmanager.action;

import java.util.List;

import com.docmanager.entity.DocElement;
import com.docmanager.service.DocElementService;
import com.opensymphony.xwork2.ActionSupport;

public class DocElementAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2116570211706578611L;
	private int docElementId;
	private String docElementName;
	private List<DocElement> docElements;
	private DocElementService docElementService;
	private String tab;
	
	public String add() throws Exception{
		int result = docElementService.addDocElement(docElementName);
		System.out.print("DocElementAction add");
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	public String delete() throws Exception{
		int result = docElementService.deleteDocElement(docElementId, docElementName);
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	
	public String update() throws Exception{
		int result = docElementService.updateDocElement(docElementId, docElementName);
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	
	public String getAll() throws Exception{
		docElements = docElementService.getAllDocElements();
		for(DocElement docElement:docElements){
			System.out.println(docElement.getName());
		}
		tab = "meta";
		return "success";
	}
	
	public int getDocElementId() {
		return docElementId;
	}
	public void setDocElementId(int docElementId) {
		this.docElementId = docElementId;
	}
	public String getDocElementName() {
		return docElementName;
	}
	public void setDocElementName(String docElementName) {
		this.docElementName = docElementName;
	}
	public List<DocElement> getDocElements() {
		return docElements;
	}
	public void setDocElements(List<DocElement> docElements) {
		this.docElements = docElements;
	}
	public DocElementService getDocElementService() {
		return docElementService;
	}
	public void setDocElementService(DocElementService docElementService) {
		this.docElementService = docElementService;
	}
	public String getTab() {
		return tab;
	}
	public void setTab(String tab) {
		this.tab = tab;
	}
	
	
}
