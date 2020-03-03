package com.huaji.domain.po;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Post implements Serializable,Comparable<Post>{
	private int id;
	private String title;
	private String content;
	private Date time;
	private int heat_status;
	private int top_status;
	private User user;
	private int visible;
	private Set<Floor> floors = new HashSet<Floor>();
	private Set<Log> logs = new HashSet<Log>();
	private Section section;
	
	private int sectionId;
	private int userId;
	
	
	
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Section getSection() {
		return section;
	}
	public void setSection(Section section) {
		this.section = section;
	}
	public int getVisible() {
		return visible;
	}
	public void setVisible(int visible) {
		this.visible = visible;
	}


	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getHeat_status() {
		return heat_status;
	}
	public void setHeat_status(int heat_status) {
		this.heat_status = heat_status;
	}
	public int getTop_status() {
		return top_status;
	}
	public void setTop_status(int top_status) {
		this.top_status = top_status;
	}

	public Set<Floor> getFloors() {
		return floors;
	}
	public void setFloors(Set<Floor> floors) {
		this.floors = floors;
	}
	public Set<Log> getLogs() {
		return logs;
	}
	public void setLogs(Set<Log> logs) {
		this.logs = logs;
	}
	public Post() {
		super();
	}
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Post(int id, String title, String content, Date time, int heat_status, int top_status, User user,
			int visible, Set<Floor> floors, Set<Log> logs) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.time = time;
		this.heat_status = heat_status;
		this.top_status = top_status;
		this.user = user;
		this.visible = visible;
		this.floors = floors;
		this.logs = logs;
	}
	public Post(String title, String content, Date time, int heat_status, int top_status, User user, int visible,
			Set<Floor> floors, Set<Log> logs) {
		super();
		this.title = title;
		this.content = content;
		this.time = time;
		this.heat_status = heat_status;
		this.top_status = top_status;
		this.user = user;
		this.visible = visible;
		this.floors = floors;
		this.logs = logs;
	}
	
	
	

	
	@Override
	public String toString() {
		return "Post [id=" + id + ", title=" + title + ", content=" + content + ", time=" + time + ", heat_status="
				+ heat_status + ", top_status=" + top_status + ", user=" + user + ", visible=" + visible + ", floors="
				+ floors + ", logs=" + logs + ", section=" + section + ", sectionId=" + sectionId + ", userId=" + userId
				+ "]";
	}
	@Override
	public int compareTo(Post post) {
		return -(this.floors.size() - post.getFloors().size());
	}


	
	
	
	

	
	

	
	

}
