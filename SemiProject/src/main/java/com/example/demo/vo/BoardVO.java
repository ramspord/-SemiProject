package com.example.demo.vo;

import java.sql.Timestamp;

public class BoardVO {

	private int no;
	private String title;
	private String content;
	private String id;
	private Timestamp regdate;
	private Timestamp updatedate;
	
	
	
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BoardVO(int no, String title, String content, String id, Timestamp regdate, Timestamp updatedate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.id = id;
		this.regdate = regdate;
		this.updatedate = updatedate;
		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate) {
		this.updatedate = updatedate;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", content=" + content + ", id=" + id + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
	
}
