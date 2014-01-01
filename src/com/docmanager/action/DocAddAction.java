package com.docmanager.action;

import java.util.List;

import com.docmanager.entity.Doc;
import com.docmanager.service.DocAddService;
import com.opensymphony.xwork2.ActionSupport;

public class DocAddAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	DocAddService docAddService;
	private int docId;
	private String type;
	private String title_name;
	private String author;
	private String pages;
	private int year;
	private String time;
	private String publisher;
	private String doc_abstract;
	private String key;
	private String url;
	private String test;
	private List<Doc> docList;
	private Doc doc;
	
	public String docAdd() throws Exception {
		//System.out.println("gdfsg");
		//System.out.println(key);
		int result = docAddService.addDoc(type,title_name,author,time,publisher,doc_abstract,key,url);
    	System.out.println(title_name);
		if(result>0){
    		return "success";
    	}
		else
			return "failure";
	}
	
	public String getDocs() throws Exception {
		//System.out.println("gdfsg");
//		System.out.println(key);
//		int result = docAddService.addDoc(type,title_name,author,time,publisher,doc_abstract,key,url);
//    	System.out.println(title_name);
		docList = docAddService.getDocsByUserId(0);
		//System.out.println(docList.get(0));
		int result = 1;
		
		if(result>0){
    		return "success";
    	}
		else
			return "failure";
	} 
	
	public String updateDoc() throws Exception{
		//System.out.println("updating");
		int result = docAddService.updateDoc(type,title_name,author,time,publisher,doc_abstract,key,url,year,pages);
		return "success";
	}
	
	public String getDocById() throws Exception{
		doc = docAddService.getDocById(4);
		return "success";
	}

	public void setDocAddService(DocAddService DocAddService) {
		this.docAddService = DocAddService;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setTime(String time) {
		this.time = time;
	}

	
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public void setDoc_abstract(String doc_abstract) {
		this.doc_abstract = doc_abstract;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public List<Doc> getDocList() {
		return docList;
	}

	public void setDocList(List<Doc> docList) {
		this.docList = docList;
	}

	public Doc getDoc() {
		return doc;
	}

	public void setDoc(Doc doc) {
		this.doc = doc;
	}
	
	public String getPages() {
		return pages;
	}

	public void setPages(String pages) {
		this.pages = pages;
	}
	
}
