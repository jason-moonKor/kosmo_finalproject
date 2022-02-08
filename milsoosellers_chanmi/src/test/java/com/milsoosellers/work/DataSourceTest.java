package com.milsoosellers.work;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.milsoosellers.work.domain.Member;
import com.milsoosellers.work.persistence.MemberDAO;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DataSourceTest {
	
	@Inject
	private DataSource datasource;
	
	@Inject
	private SqlSessionFactory sessionFactory;

	@Inject
	private MemberDAO memberDAO;
	
	@Test
	public void testConnection() throws Exception {
		try {
			Connection con = datasource.getConnection();
			System.out.println("DB 연결 성공!");
		} catch (Exception e) {
			
		// TODO: handle exception
		}
	}
	
	@Test
	public void testFactory() {
		System.out.println(sessionFactory);
	}
	
	@Test
	public void testSession() throws Exception {
		try {
			SqlSession sqlSession = sessionFactory.openSession();
			System.out.println(sqlSession);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	@Test
	public void testTime() {
		System.out.println(memberDAO.getTime() + ":::testing");
	}
	
	
	@Before
	public void testInsertMember() throws Exception {
		
		if (memberDAO.findById("chanmi") == null) {
			Member member = new Member();
			member.setMember_id("chanmi");
			member.setMem_passwd("1234");
			member.setMem_name("chanmi");
			member.setMem_addr("gasan");
			member.setMem_tel("01012341234");
			
			memberDAO.save(member);
		}
		
	}
	
	@Test
	public void testFindMember() throws Exception {
		Member member = memberDAO.findById("chanmi");
		System.out.println(member.getMem_addr());
	}
	
	
	
}



