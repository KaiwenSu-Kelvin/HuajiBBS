package com.huaji.domain.po;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable{
	private Integer id;
	private String name;
	private String password;
	private String email;
	private String gender;
	private int level;
	private int exp;
	private String head;
	private String hobby;
	private String integral;
	private Date unBanDate;

	
	private Set<Floor> floors = new HashSet<Floor>();
	private Set<Post> posts = new HashSet<Post>();
	public Integer getId() {
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getExp() {
		return exp;
	}
	public void setExp(int exp) {
		this.exp = exp;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getIntegral() {
		return integral;
	}
	public void setIntegral(String integral) {
		this.integral = integral;
	}
	public Date getUnBanDate() {
		return unBanDate;
	}
//	public String getUnBanDate() {
//	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//显示2017-10-27 10:00:00格式
//	String date = sdf.format(unBanDate);
//	return date;
//}
	public void setUnBanDate(Date unBanDate) {
		this.unBanDate = unBanDate;
	}
	public Set<Floor> getFloors() {
		return floors;
	}
	public void setFloors(Set<Floor> floors) {
		this.floors = floors;
	}
	public Set<Post> getPosts() {
		return posts;
	}
	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}
	public User(int id, String name, String password, String email, String gender, int level, int exp, String head,
			String hobby, String integral, Date unBanDate, Set<Floor> floors, Set<Post> posts) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.level = level;
		this.exp = exp;
		this.head = head;
		this.hobby = hobby;
		this.integral = integral;
		this.unBanDate = unBanDate;
		this.floors = floors;
		this.posts = posts;
	}
	public User(String name, String password, String email, String gender, int level, int exp, String head,
			String hobby, String integral, Date unBanDate, Set<Floor> floors, Set<Post> posts) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.level = level;
		this.exp = exp;
		this.head = head;
		this.hobby = hobby;
		this.integral = integral;
		this.unBanDate = unBanDate;
		this.floors = floors;
		this.posts = posts;
	}
	
	
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", gender="
				+ gender + ", level=" + level + ", exp=" + exp + ", head=" + head + ", hobby=" + hobby + ", integral="
				+ integral + ", unBanDate=" + unBanDate + ", floors=" + floors + ", posts=" + posts + "]";
	}
	
	
	
	

}
	
	
	