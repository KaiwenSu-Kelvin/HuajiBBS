package com.huaji.domain.po;

import java.io.Serializable;
import java.util.Date;

public class Floor implements Serializable{
	private int id;
	private String content;
	private String height;
	private Date datetime;
    
    private Post post;
    private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}


	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Floor() {
		super();
	}
	public Floor(int id, String content, String height, Date datetime,  Post post, User user) {
		super();
		this.id = id;
		this.content = content;
		this.height = height;
		this.datetime = datetime;
		this.post = post;
		this.user = user;
	}
	public Floor(String content, String height, Date datetime,  Post post, User user) {
		super();
		this.content = content;
		this.height = height;
		this.datetime = datetime;
		this.post = post;
		this.user = user;
	}
	@Override
	public String toString() {
		return "Floor [id=" + id + ", content=" + content + ", height=" + height + ", datetime=" + datetime
				 + ", post=" + post + ", user=" + user + "]";
	}
    
    
	
	
	
}