package com.huaji.domain.po;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Section implements Serializable {
	private int id;
	private String name;
	private String describe;
	private Category category;
	private String image;
	private String text;
	private Set<Post> posts = new HashSet<Post>();
	private Set<Rank> ranks = new HashSet<Rank>();
	private Set<User> users = new HashSet<User>();
	
	
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
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

	public String getDescribe() {
		return describe;
	}
	
	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<Post> getPosts() {
		return posts;
	}

	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}

	public Set<Rank> getRanks() {
		return ranks;
	}

	public void setRanks(Set<Rank> ranks) {
		this.ranks = ranks;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Section() {
		super();
	}

	
	
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Section(String name, String describe,  Category category, Set<Post> posts, Set<Rank> ranks,
			Set<User> users) {
		super();
		this.name = name;
		this.describe = describe;
		this.category = category;
		this.posts = posts;
		this.ranks = ranks;
		this.users = users;
	}

	public Section(int id, String name, String describe, Category category, Set<Post> posts,
			Set<Rank> ranks, Set<User> users) {
		super();
		this.id = id;
		this.name = name;
		this.describe = describe;
		this.category = category;
		this.posts = posts;
		this.ranks = ranks;
		this.users = users;
	}

	@Override
	public String toString() {
		return "Section [id=" + id + ", name=" + name + ", describe=" + describe 
				+ ", category=" + category + ", posts=" + posts + ", ranks=" + ranks + ", users=" + users + "]";
	}

}
