package com.huaji.controller;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexableField;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.RAMDirectory;
import org.wltea.analyzer.lucene.IKAnalyzer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.huaji.dao.FloorDao;
import com.huaji.dao.PostDao;
import com.huaji.dao.SectionDao;
import com.huaji.domain.po.Admin;
import com.huaji.domain.po.Floor;
import com.huaji.domain.po.Post;
import com.huaji.domain.po.Section;
import com.huaji.domain.po.User;

@Controller
public class PostController {
	@RequestMapping("/post")
	public ModelAndView toPost(int postId, HttpSession httpSession) throws IOException {

		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(PostController.class.getClassLoader(), rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();

		PostDao mapper1 = session.getMapper(PostDao.class);
		Post post = mapper1.findById(postId);

		if (post.getVisible() == 0 && httpSession.getAttribute("admin") == null) {
			ModelAndView mv = new ModelAndView("404");
			return mv;
		}

		FloorDao mapper2 = session.getMapper(FloorDao.class);
		List<Floor> floors = mapper2.findFloorsByPostId(postId);

		// System.out.println("--------------------------");
		// for (Floor floor : post.getFloors()) {
		// System.out.println(floor.getContent());
		// }

		HashMap<String, Object> model = new HashMap<String, Object>();
		model.put("post", post);
		model.put("floors", floors);

		ModelAndView mv = new ModelAndView("post", model);

		return mv;

	}

	@RequestMapping("/showUserPost")
	public ModelAndView showUserPost(int user_id) throws IOException {

		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(PostController.class.getClassLoader(), rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();

		PostDao postDao = session.getMapper(PostDao.class);
		List<Post> posts = postDao.findByUserId(user_id);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("posts", posts);

		ModelAndView mv = new ModelAndView("home", model);

		return mv;

	}

	@RequestMapping("/Lucene")
	public ModelAndView showSelect(String keyword) throws Exception {
		String rescource = "mybatis-config.xml";
		Reader reader = Resources.getResourceAsReader(PostController.class.getClassLoader(), rescource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();

		PostDao postDao = session.getMapper(PostDao.class);
		List<Post> posts = postDao.findAll();
		List<String> contentList = posts.stream().map(e -> e.getContent()).collect(Collectors.toList());
		System.out.println(contentList);
		IKAnalyzer analyzer = new IKAnalyzer();
		Directory index = createIndex(analyzer, contentList);
		// String keyword = "帖子";
		Query query = new QueryParser("name", analyzer).parse(keyword);
		IndexReader reader1 = DirectoryReader.open(index);
		IndexSearcher searcher = new IndexSearcher(reader1);
		int numberPerPage = 100;
		System.out.printf("当前一共有%d条数据%n", contentList.size());
		System.out.printf("查询关键字是：\"%s\"%n", keyword);
		ScoreDoc[] hits = searcher.search(query, numberPerPage).scoreDocs;

		List<Post> posts1 = new ArrayList<Post>();
		for (int i = 0; i < hits.length; ++i) {
			ScoreDoc scoreDoc = hits[i];
			int docId = scoreDoc.doc;
			Document d = searcher.doc(docId);
			List<IndexableField> fields = d.getFields();
			System.out.print((i + 1));
			System.out.print("\t" + scoreDoc.score);
			for (IndexableField f : fields) {

				System.out.print("\t" + d.get(f.name()));

				Post post1 = postDao.findLuceneId(d.get(f.name()));
				posts1.add(post1);

			}
			System.out.println();
		}
		reader.close();
		Map<String, Object> model = new HashMap<String, Object>();
		System.out.println("最后的post：" + posts1);
		model.put("posts", posts1);
		ModelAndView mv = new ModelAndView("search", model);
		return mv;

	}

	private static void addDoc(IndexWriter w, String name) throws IOException {
		Document doc = new Document();
		doc.add(new TextField("name", name, Field.Store.YES));
		w.addDocument(doc);
	}

	private static Directory createIndex(IKAnalyzer analyzer, List<String> products) throws IOException {
		Directory index = new RAMDirectory();
		IndexWriterConfig config = new IndexWriterConfig(analyzer);
		IndexWriter writer = new IndexWriter(index, config);

		for (String name : products) {
			addDoc(writer, name);
		}
		writer.close();
		return index;
	}

	@RequestMapping("/add")
	public ModelAndView addPost(String title, String content, int userId, int sectionId, HttpSession httpSession)
			throws Exception {

		User user = (User) httpSession.getAttribute("user");
		System.out.println(user);
		if (user == null) {
			ModelAndView mv = new ModelAndView("redirect:/login");
			return mv;
		} else {
			String rescource = "mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(PostController.class.getClassLoader(), rescource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession(true);

			Post postAdded = new Post();
			postAdded.setTitle(title);
			postAdded.setContent(content);
			postAdded.setUserId(userId);
			postAdded.setSectionId(sectionId);
			System.out.println(postAdded);
			PostDao mapper = session.getMapper(PostDao.class);
			mapper.addPost(postAdded);

			ModelAndView mv = new ModelAndView("redirect:/section?sectionId=" + sectionId + "&page=1");
			return mv;
		}
	}

	@RequestMapping("/Add")
	public ModelAndView toAdd() throws Exception {

		ModelAndView mv = new ModelAndView("Add");
		return mv;

	}

}
