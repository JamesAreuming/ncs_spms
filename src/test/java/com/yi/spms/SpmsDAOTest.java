package com.yi.spms;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.SpmsVO;
import com.yi.persistence.SpmsDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class SpmsDAOTest {

	@Autowired
	public SpmsDAO dao;
	
	@Test
	public void testDao() {
		System.out.println(dao);
	}
	
	@Test
	public void testInsert() throws Exception {
		SpmsVO vo = new SpmsVO();
		vo.setProjectName("테스트2");
		vo.setProjectContent("테스트3");
		vo.setProjectStart(new Date());
		vo.setProjectEnd(new Date());	
		vo.setProjectState("삭제");
		dao.insert(vo);
	}
	
	@Test
	public void testReadyByNo() throws Exception {
		dao.readByNo(1);
		
	}
	
	@Test
	public void testList() throws Exception {
		dao.list();
	}
	
	@Test
	public void testUpdate() throws Exception {
		SpmsVO vo = new SpmsVO();
		vo.setProjectNo(6);
		vo.setProjectName("테스트5");
		vo.setProjectContent("테스트5");
		vo.setProjectStart(new Date());
		vo.setProjectEnd(new Date());	
		vo.setProjectState("삭제할꺼임");
		dao.update(vo);	
	}
	
//	@Test
	public void testDelete() throws Exception {
		dao.delete(6);
	}
	

	
}
