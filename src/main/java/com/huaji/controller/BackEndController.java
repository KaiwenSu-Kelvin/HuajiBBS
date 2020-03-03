package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.PostDao;
import com.huaji.dao.SectionDao;
import com.huaji.dao.UserDao;
import com.huaji.domain.po.Admin;
import com.huaji.domain.po.Post;
import com.huaji.domain.po.Section;
import com.huaji.domain.po.User;

@Controller
public class BackEndController {
	@RequestMapping("/manage/post")
    public ModelAndView postManage(HttpSession session) throws IOException{
		Admin admin = (Admin) session.getAttribute("admin");
		System.out.println(admin);
    	if (admin==null) {
    		ModelAndView mv = new ModelAndView("redirect:/adminLogin");
	        return mv;
		}
    	else {
    		String rescource = "mybatis-config.xml";
    		Reader reader = Resources.getResourceAsReader(BackEndController.class.getClassLoader(),rescource);
    		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
    		SqlSession session1 = sessionFactory.openSession();
    		
    		PostDao mapper = session1.getMapper(PostDao.class);
    		List<Post> posts = mapper.findAll();
    		SectionDao mapper3 = session1.getMapper(SectionDao.class);
    		List<Section> sections = mapper3.findAll();
    		
    		System.out.println(posts.size());
    		HashMap<String, Object> model = new HashMap<String, Object>();
    		model.put("posts", posts);
    		model.put("sections", sections);
//    		for (Section section : sections) {
//				System.out.println(section.getName());
//			}
    		ModelAndView mv = new ModelAndView("postManage",model);
            return mv;
		}
		
		
		
    }
    @RequestMapping("/manage/user")
    public ModelAndView userManage(HttpSession session) throws IOException{
    	Admin admin = (Admin) session.getAttribute("admin");
		System.out.println(admin);
    	if (admin==null) {
    		ModelAndView mv = new ModelAndView("redirect:/adminLogin");
	        return mv;
		}
    	else {
    		String rescource = "mybatis-config.xml";
    		Reader reader = Resources.getResourceAsReader(BackEndController.class.getClassLoader(),rescource);
    		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
    		SqlSession session2 = sessionFactory.openSession();
        	
    		UserDao mapper = session2.getMapper(UserDao.class);
    		List<User> users = mapper.findAll();
    		HashMap<String, Object> model = new HashMap<String, Object>();
    		model.put("users", users);
    		
            ModelAndView mv = new ModelAndView("userManage",model);
            return mv;
		}
    	
    	
    }
    
    
    @RequestMapping("/manage/selectUser")
    public ModelAndView selectUser(HttpSession session) throws IOException{
    	Admin admin = (Admin) session.getAttribute("admin");
		System.out.println(admin);
    	if (admin==null) {
    		ModelAndView mv = new ModelAndView("redirect:/adminLogin");
	        return mv;
		}
    	else {
    		String rescource = "mybatis-config.xml";
    		Reader reader = Resources.getResourceAsReader(BackEndController.class.getClassLoader(),rescource);
    		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
    		SqlSession session2 = sessionFactory.openSession();
        	
//    		System.out.println(user.getName()+user.getId());
    		
    		UserDao mapper = session2.getMapper(UserDao.class);
    		List<User> users = mapper.findAll();
    		HashMap<String, Object> model = new HashMap<String, Object>();
    		model.put("users", users);
    		
            ModelAndView mv = new ModelAndView("userManage",model);
            return mv;
		}
    	
    	
    }
    
    @RequestMapping("/managerPage")
    public ModelAndView managePage(HttpSession session){
    	Admin admin = (Admin) session.getAttribute("admin");
		System.out.println(admin);
    	if (admin==null) {
    		ModelAndView mv = new ModelAndView("redirect:/adminLogin");
	        return mv;
		}
    	else {
    		ModelAndView mv = new ModelAndView("managerPage");
            return mv;
		}
    }
}
