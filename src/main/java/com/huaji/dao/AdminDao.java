package com.huaji.dao;

import com.huaji.domain.po.Admin;

public interface AdminDao {
	
	public Admin findByAdminName(String name);
	
}
