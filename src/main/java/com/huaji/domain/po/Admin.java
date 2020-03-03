package com.huaji.domain.po;

public class Admin {
	private int id;
	private String name;
	private String password;
	private String head;
	
	
	
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public Admin(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Admin() {
		super();
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + "]";
	}
	

}
