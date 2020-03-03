package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.FloorDao;
import com.huaji.domain.po.Floor;
import com.huaji.domain.po.Post;
import com.huaji.domain.po.User;

@Controller
public class ReplyController {
	@RequestMapping("/reply")
	public ModelAndView reply(String content,int post_id,int user_id,HttpServletResponse response) throws IOException{
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(ReplyController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		
		
		Floor floor = new Floor();
		
		floor.setContent(content);
		floor.setDatetime(new Date());
		
		Post post = new Post();
		post.setId(post_id);
		User user = new User();
		user.setId(user_id);
		floor.setPost(post);
		floor.setUser(user);
		
		System.out.println(floor.getContent()+floor.getDatetime());
		System.out.println("post_id:"+floor.getPost().getId()+"-user_id:"+floor.getUser().getId());
		FloorDao mapper = session.getMapper(FloorDao.class);
		int insert = mapper.insert(floor);
		session.commit();
		
		System.out.println(insert);
		Map<String, Object> model = new HashMap<String, Object>();
		ModelAndView mv = new ModelAndView("redirect:/post?postId="+post_id, model);
						
		return mv;
	}
}
