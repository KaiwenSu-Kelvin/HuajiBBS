package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.CategoryDao;
import com.huaji.dao.PostDao;
import com.huaji.domain.po.Category;
import com.huaji.domain.po.Post;

@Controller
public class IndexController {
	
	
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView toIndex() throws IOException{
		
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(IndexController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		CategoryDao mapper1 = session.getMapper(CategoryDao.class);
		List<Category> categories = mapper1.findAll();
		
		PostDao mapper2 = session.getMapper(PostDao.class);
		List<Post> posts = mapper2.findAll();
		Collections.sort(posts); // 按回帖数排序
//		for (Category category : categories) {
//			System.out.println(category.getName());
//		}
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("categories", categories);
		model.put("posts", posts);
		
		ModelAndView mv = new ModelAndView("index", model);
						
		return mv;
	}
}
