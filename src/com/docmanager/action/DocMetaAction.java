package com.docmanager.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.docmanager.entity.DocMeta;
import com.docmanager.service.DocMetaService;
import com.docmanager.util.MapUtil;
import com.opensymphony.xwork2.ActionSupport;

public class DocMetaAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2116570211706578611L;
	private String docType;
	private String[] docMetas;
	private List<DocMeta> docMetaList;
	private String[] docElementsId;
	private List<Map<String, String>> mapList;
	private DocMetaService docMetaService;
	private String tab;
	
	public String add() throws Exception{
		int result = docMetaService.addDocMeta(docType, docElementsId, docMetas);
		System.out.print("DocMetaAction add");
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	public String delete() throws Exception{
		int result = docMetaService.deleteDocMeta(docType);
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	
	public String update() throws Exception{
		int result = docMetaService.updateDocMeta(docType, docMetas);
		if (result> 0){
			return "success";
		}else{
			return "failure";
		}
	}
	
	public String getAll() throws Exception{
		docMetaList = docMetaService.getDocMetaList();
		mapList = new ArrayList<Map<String,String>>();
		for(DocMeta docMeta:docMetaList){
			mapList.add(MapUtil.parserString(docMeta.getContent()));
		}
		tab = "meta";
		return "success";
	}
	public String getDocType() {
		return docType;
	}
	public void setDocType(String docType) {
		this.docType = docType;
	}
	public String[] getDocMetas() {
		return docMetas;
	}
	public void setDocMetas(String[] docMetas) {
		this.docMetas = docMetas;
	}
	public List<DocMeta> getDocMetaList() {
		return docMetaList;
	}
	public void setDocMetaList(List<DocMeta> docMetaList) {
		this.docMetaList = docMetaList;
	}
	public DocMetaService getDocMetaService() {
		return docMetaService;
	}
	public void setDocMetaService(DocMetaService docMetaService) {
		this.docMetaService = docMetaService;
	}
	public String getTab() {
		return tab;
	}
	public void setTab(String tab) {
		this.tab = tab;
	}
	public String[] getDocElementsId() {
		return docElementsId;
	}
	public void setDocElementsId(String[] docElementsId) {
		this.docElementsId = docElementsId;
	}
	public List<Map<String, String>> getMapList() {
		return mapList;
	}
	public void setMapList(List<Map<String, String>> mapList) {
		this.mapList = mapList;
	}
	
}
