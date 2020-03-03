package com.huaji.domain.po;

import java.io.Serializable;

public class Log implements Serializable{
	private int id;
	private int operation;
	
    private User user;
    private Post post;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOperation() {
		return operation;
	}
	public void setOperation(int operation) {
		this.operation = operation;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public Log() {
		super();
	}
	public Log(int operation, User user, Post post) {
		super();
		this.operation = operation;
		this.user = user;
		this.post = post;
	}
	public Log(int id, int operation,  User user, Post post) {
		super();
		this.id = id;
		this.operation = operation;

		this.user = user;
		this.post = post;
	}
	@Override
	public String toString() {
		return "Log [id=" + id + ", operation=" + operation + ", user=" + user + ", post=" + post + "]";
	}
    
    
    
	

}
