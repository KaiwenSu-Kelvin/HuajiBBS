package com.huaji.controller;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.AdminDao;
import com.huaji.dao.UserDao;
import com.huaji.domain.po.Admin;
import com.huaji.domain.po.User;

@Controller
@SessionAttributes(value= {"user","admin"})
public class UserController {
	@RequestMapping("/checkLogin")
	public ModelAndView checkLogin(User user) throws IOException{
		
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(UserController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		UserDao userDao = session.getMapper(UserDao.class);
		
		User checkUser = userDao.findByUsername(user.getName());
//		System.out.println(user.getName());
		if (checkUser!=null&&user.getPassword().equals(checkUser.getPassword())) {
		
			ModelAndView mv = new ModelAndView();
			mv.addObject("user",checkUser);
			mv.setViewName("redirect:/index");
			
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView("redirect:/checkLogin");
	        return mv;
		}
	}
	
    @RequestMapping("/anotherpage")
    public ModelAndView hrefpage(){
    	
    	ModelAndView mv = new ModelAndView("anotherpage");
        return mv;
    }
    
    @RequestMapping("/outLogin")
    public ModelAndView outLogin(HttpSession session,SessionStatus sessionStatus){
        
        session.removeAttribute("user");
        session.invalidate();
        sessionStatus.setComplete();

        ModelAndView mv = new ModelAndView("redirect:/index");
        return mv;
    }
    
    @RequestMapping("/adminOutLogin")
    public ModelAndView adminOutLogin(HttpSession session,SessionStatus sessionStatus){
        
        session.removeAttribute("admin");
        session.invalidate();
        sessionStatus.setComplete();

        ModelAndView mv = new ModelAndView("redirect:/index");
        return mv;
    }
   
    @RequestMapping("/doRegist")
    public ModelAndView doRegist(User user1,MultipartFile file) throws IOException{
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(UserController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession(true);
		
		UserDao userDao = session.getMapper(UserDao.class);
		User checkUser = userDao.findByUsername(user1.getName());
        System.out.println(file);
		//String filePath = "C:\Users\Administrator\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HuajiBBS\image\head";
		String filePath = "C:\\Users\\KelvinSu\\eclipse-workspace\\HuajiBBS\\WebContent\\image\\head";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);
		
		user1.setHead(newFileName);

		if(checkUser == null) {
		   System.out.println(user1);
	       userDao.register(user1.getName(),user1.getPassword(),user1.getEmail(),user1.getGender(),user1.getHead());
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("user1",user1);
		   mv.setViewName("login");
	       return mv;
		}
		else{
		   ModelAndView mv = new ModelAndView("redirect:/index");
		   return mv;
			
		}
		 }
    @RequestMapping("/checkAdminLogin")
    public ModelAndView checkAdminLogin(Admin admin) throws IOException{
    	
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(UserController.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession(true);
		
		AdminDao adminDao = session.getMapper(AdminDao.class);
		Admin checkAdmin = adminDao.findByAdminName(admin.getName());
		
		if (checkAdmin!=null&&admin.getPassword().equals(checkAdmin.getPassword())) {
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("admin",checkAdmin);
			mv.setViewName("managerPage");
			
			return mv;
		}
	        ModelAndView mv = new ModelAndView("redirect:/index");
            return mv;
		
    }
    
    @RequestMapping("/regist")
    public ModelAndView regist(){
        ModelAndView mv = new ModelAndView("regist");
        return mv;
    }
    @RequestMapping("/login")
    public ModelAndView login(){
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }
    @RequestMapping("/adminLogin")
    public ModelAndView adminLogin(){
        ModelAndView mv = new ModelAndView("adminLogin");
        return mv;
    }

}
