package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.PostDao;
import com.huaji.dao.SectionDao;
import com.huaji.domain.po.Post;
import com.huaji.domain.po.Section;

@Controller
public class SectionController {
	@RequestMapping("/section")
	public ModelAndView toSection(int sectionId,int page) throws IOException {
		
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(SectionController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		SectionDao mapper1 = session.getMapper(SectionDao.class);
		Section section = mapper1.findById(sectionId);
		PostDao mapper2 = session.getMapper(PostDao.class);
		List<Post> posts = mapper2.findBySectionId(sectionId);
		
		int onePage = 8;
		int max = posts.size()/onePage+1;
		
		
		HashMap<String, Object> model = new HashMap<String,Object>();
		model.put("section", section);
		model.put("posts", posts);
		model.put("page", page);
		model.put("max", max);
		model.put("onePage", onePage);
		ModelAndView mv = new ModelAndView("section",model);
		
		return mv;
		
	}
}
