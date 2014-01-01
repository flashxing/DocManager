package com.docmanager.entity;

public class Doc {
	private int docId;
	private String type;
	private String title;
	private String author;
	private int year;
	private String time;
	private String pages;
	private String publisher;
	private String docAbstract;
	private String key;
	private String url;
	private int userId;
	private int rank;
	//book
	private String editor;
	private Integer ISBN;
	//book_section
	private String bookName;
	//confer
	private Integer DOI;
	//private String conferenceName;
	private String conferenceYear;
	private String conferenceCity;
	//jour
	//private String journalName;
	private String volume;
	private String issue;
	//online
	//report
	//thesis
	private String school;

	
	public Doc(){
		
	}
	public Doc(String type, String title, String author, int year, int rank,
				String time, String pages, String publisher, String docAbstract,
				String key, String url, int userId, String editor, Integer ISBN, String bookName,
				Integer DOI, String conferenceYear, String conferenceCity, 
				String volume, String issue, String school){
		this.type = type;
		this.title = title;
		this.author = author;
		this.year = year;
		this.rank=rank;
		this.time=time;
		this.pages=pages;
		this.publisher = publisher;
		this.docAbstract = docAbstract;
		this.key = key;
		this.url = url;
		this.userId = userId;
		
		this.editor=editor;
		this.ISBN=ISBN;
		this.bookName=bookName;
		this.DOI=DOI;
		this.conferenceYear=conferenceYear;
		this.conferenceCity=conferenceCity;
		this.volume=volume;
		this.issue=issue;
		this.school=school;
	}
		public Doc(String type, String title, String author, int year, int rank,
				String pages, String publisher, String docAbstract,
				String key, String url, int userId, String editor, Integer ISBN, String bookName,
				Integer DOI, String conferenceYear, String conferenceCity, 
				 String volume, String issue, String school){
		this.type = type;
		this.title = title;
		this.author = author;
		this.year = year;
		this.rank=rank;
		this.pages=pages;
		this.publisher = publisher;
		this.docAbstract = docAbstract;
		this.key = key;
		this.url = url;
		this.userId = userId;
		
		this.editor=editor;
		this.ISBN=ISBN;
		this.bookName=bookName;
		this.DOI=DOI;
		this.conferenceYear=conferenceYear;
		this.conferenceCity=conferenceCity;
		this.volume=volume;
		this.issue=issue;
		this.school=school;
	}

		
		public Doc(int docId,String type, String title, String author, int year, int rank,
				String time, String pages, String publisher, String docAbstract,
				String key, String url, int userId, String editor, Integer ISBN, String bookName,
				Integer DOI, String conferenceYear, String conferenceCity, 
				String volume, String issue, String school){
			this.docId=docId;
		this.type = type;
		this.title = title;
		this.author = author;
		this.year = year;
		this.rank=rank;
		this.time=time;
		this.pages=pages;
		this.publisher = publisher;
		this.docAbstract = docAbstract;
		this.key = key;
		this.url = url;
		this.userId = userId;
		
		this.editor=editor;
		this.ISBN=ISBN;
		this.bookName=bookName;
		this.DOI=DOI;
		this.conferenceYear=conferenceYear;
		this.conferenceCity=conferenceCity;
		this.volume=volume;
		this.issue=issue;
		this.school=school;
	}
		
		
		public Doc(int docId, String title, String author, int year, int rank,
				 String pages, String publisher, String docAbstract,
				String key, String url, int userId, String editor, Integer ISBN, String bookName,
				Integer DOI, String conferenceYear, String conferenceCity, 
				String volume, String issue, String school){
			this.docId=docId;
		this.title = title;
		this.author = author;
		this.year = year;
		this.rank=rank;
		this.pages=pages;
		this.publisher = publisher;
		this.docAbstract = docAbstract;
		this.key = key;
		this.url = url;
		this.userId = userId;
		
		this.editor=editor;
		this.ISBN=ISBN;
		this.bookName=bookName;
		this.DOI=DOI;
		this.conferenceYear=conferenceYear;
		this.conferenceCity=conferenceCity;
		this.volume=volume;
		this.issue=issue;
		this.school=school;
	}

	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getDocAbstract() {
		return docAbstract;
	}
	public void setDocAbstract(String docAbstract) {
		this.docAbstract = docAbstract;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	@Override
	public Doc clone(){
		return new Doc(docId,type,title,author,year,rank,time, pages,publisher,docAbstract,key,url,
				userId,editor,ISBN,bookName,DOI,conferenceYear,conferenceCity, volume, issue,school);
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getPages() {
		return pages;
	}
	public void setPages(String pages) {
		this.pages = pages;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public Integer getISBN() {
		return ISBN;
	}
	public void setISBN(Integer iSBN) {
		ISBN = iSBN;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Integer getDOI() {
		return DOI;
	}
	public void setDOI(Integer dOI) {
		DOI = dOI;
	}
	public String getConferenceYear() {
		return conferenceYear;
	}
	public void setConferenceYear(String conferenceYear) {
		this.conferenceYear = conferenceYear;
	}
	public String getConferenceCity() {
		return conferenceCity;
	}
	public void setConferenceCity(String conferenceCity) {
		this.conferenceCity = conferenceCity;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	
	
}
