package com.huaji.domain.po;

import java.io.Serializable;

public class Rank implements Serializable{
	private int id;
	private String name;
	private int level;
	
    private Section section;

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

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}



	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public Rank() {
		super();
	}

	public Rank(int id, String name, int level,  Section section) {
		super();
		this.id = id;
		this.name = name;
		this.level = level;
		this.section = section;
	}

	public Rank(String name, int level,  Section section) {
		super();
		this.name = name;
		this.level = level;
		this.section = section;
	}

	@Override
	public String toString() {
		return "Rank [id=" + id + ", name=" + name + ", level=" + level  + ", section="
				+ section + "]";
	}
	
    
	
	
	

}
