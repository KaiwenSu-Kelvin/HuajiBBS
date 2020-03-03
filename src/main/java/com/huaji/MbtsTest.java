package com.huaji;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.huaji.dao.CategoryDao;
import com.huaji.domain.po.Category;
import com.huaji.domain.po.Section;


public class MbtsTest {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(MbtsTest.class.getClassLoader(),rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		
		CategoryDao mapper = session.getMapper(CategoryDao.class);
		List<Category> categories = mapper.findAll();
		for (Category category : categories) {
			System.out.println(category.getName());
			Set<Section> sections = category.getSections();
			for (Section section : sections) {
				System.out.println("    "+section.getName());
			}
		}
	}

}
