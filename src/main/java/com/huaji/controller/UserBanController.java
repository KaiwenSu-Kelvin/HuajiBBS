package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.UserDao;
import com.huaji.domain.po.User;

@Controller
@RequestMapping("/ban")
public class UserBanController {
//	@RequestMapping("/user")
//	public ModelAndView toUserBan() throws IOException {
//		String rescource = "mybatis-config.xml";
//		Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
//		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
//		SqlSession session = sessionFactory.openSession();
//		
//		UserDao mapper = session.getMapper(UserDao.class);
//		List<User> users = mapper.findAll();
//		
////		for (User user : users) {
////			System.out.println(user.getName());
////		}
//		
//		HashMap<String, Object> model = new HashMap<String, Object>();
//		model.put("users", users);
//		ModelAndView mv = new ModelAndView("user-ban",model);
//		
//		return mv;
//	}
	
	
	@RequestMapping("/banUser")
	public String banUser(int uid) throws IOException {
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		
		UserDao mapper1 = session.getMapper(UserDao.class);
		User user = mapper1.findById(uid);
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());//设置起时间
		cal.add(Calendar.MONTH, 1);//增加一月
		Date date =cal.getTime();
		user.setUnBanDate(date);
		System.out.println(user);
		
		UserDao mapper2 = session.getMapper(UserDao.class);
		mapper2.update(user);
		session.commit();
		
		return "redirect:/manage/user";
	}
	
	@RequestMapping("/unbanUser")
	public String unbanUser(int uid) throws IOException {
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(UserBanController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		
		UserDao mapper1 = session.getMapper(UserDao.class);
		User user = mapper1.findById(uid);
		user.setUnBanDate(null);
		System.out.println(user);
		
		UserDao mapper2 = session.getMapper(UserDao.class);
		mapper2.update(user);
		session.commit();
		
		return "redirect:/manage/user";
	}

}
