package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huaji.dao.PostDao;
import com.huaji.domain.po.Admin;
import com.huaji.domain.po.Post;

@Controller
@RequestMapping("/ban")
public class PostManageController {
//		private HttpSession httpSession;
	
//	@RequestMapping("/post")
//	public ModelAndView toPostBan() throws IOException {
//		
//		
//		String rescource = "mybatis-config.xml";
//		Reader reader = Resources.getResourceAsReader(PostManageController.class.getClassLoader(),rescource);
//		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
//		SqlSession session = sessionFactory.openSession();
//		
//		PostDao mapper = session.getMapper(PostDao.class);
//		List<Post> posts = mapper.findAll();
//		
////		for (User post : posts) {
////			System.out.println(post.getTitle());
////		}
//		
//		HashMap<String, Object> model = new HashMap<String, Object>();
//		model.put("posts", posts);
//		
//		ModelAndView mv = new ModelAndView("postManage",model);
//		
//		return mv;
//	}
	
	
	@RequestMapping("/banPost")
	public String banPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			post.setVisible(0);
//			System.out.println(post.getVisible());
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			
			return "redirect:/manage/post";
		}
		
	}
	
	@RequestMapping("/banPost_inPost")
	public String banPost_inPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			int sectionId = post.getSection().getId();
			post.setVisible(0);
//			System.out.println(post.getVisible());
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			return "redirect:/section?sectionId="+sectionId+"&page=1";
		}

		
	}
	
	@RequestMapping("/unbanPost")
	public String unbanPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			post.setVisible(1);
//			System.out.println(post.getVisible());
			
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			
			return "redirect:/manage/post";
		}

	}
	
	@RequestMapping("/stickPost")
	public String stickPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			post.setTop_status(1);
//			System.out.println(post.getTop_status());
			
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			
			return "redirect:/manage/post";
		}
		
		
		
		
	}
	
	
	@RequestMapping("/stickPost_inPost")
	public String stickPost_inPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			post.setTop_status(1);
//			System.out.println(post.getTop_status());
			
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			
			return "redirect:/post?postId="+pid;
		}
		
		
		
		
	}
	
	
	@RequestMapping("/unStickPost")
	public String unStickPost(int pid,HttpSession httpSession) throws IOException {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if (admin == null) {
			return "NO-ACCESS";
		}else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			
			PostDao mapper1 = session.getMapper(PostDao.class);
			Post post = mapper1.findById(pid);
			post.setTop_status(0);
//			System.out.println(post.getTop_status());
			
			PostDao mapper2 = session.getMapper(PostDao.class);
			mapper2.update(post);
			session.commit();
			
			return "redirect:/manage/post";
		}

	}

}
