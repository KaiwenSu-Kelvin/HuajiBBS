package com.huaji.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huaji.domain.po.Post;

public interface PostDao extends GenericDao<Post, Integer> {
	public List<Post> findByUserId(@Param("user_id")int user_id);
	public Post findLuceneId(@Param("content")String content);
	public List<Post> findLuceneAll();
	public List<Post> findBySectionId(int section_id);
	
	public void addPost(Post post);
}
