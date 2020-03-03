package com.huaji.dao;
import org.apache.ibatis.annotations.Param;

import com.huaji.domain.po.User;


public interface UserDao extends GenericDao<User, Integer> {
	public User findByUsername(String name);
	void register(@Param("name")String name,
            @Param("password")String password,
            @Param("email")String email,
            @Param("gender")String gender,
            @Param("head")String head);
}
