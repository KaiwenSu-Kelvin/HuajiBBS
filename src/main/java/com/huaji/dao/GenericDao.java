package com.huaji.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao <Entity extends Serializable , ID extends Object>{
	List<Entity> findAll();
	Entity findById(ID id);
	List<Entity> finByName(String name);
	
	int insert(Entity entity);
	int update(Entity entity);
	int delete(Entity entity);
	int delete(ID id);
}
