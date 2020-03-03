package com.huaji.domain.po;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;



public class Category implements Serializable{
	private int id;
	private String name;
	
	private Set<Section> sections = new HashSet<Section>();

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

	public Set<Section> getSections() {
		return sections;
	}

	public void setSections(Set<Section> sections) {
		this.sections = sections;
	}

	public Category(int id, String name, Set<Section> sections) {
		super();
		this.id = id;
		this.name = name;
		this.sections = sections;
	}

	public Category() {
		super();
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", sections=" + sections + "]";
	}

	

   
	
	

}
