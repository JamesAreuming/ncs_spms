package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.SpmsVO;
import com.yi.persistence.SpmsDAO;

@Service
public class SpmsService {

	
	@Autowired //주입을 받게됨
	SpmsDAO dao;
	
	public void create(SpmsVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public SpmsVO readByNo(int projectNo) throws Exception {
		return dao.readByNo(projectNo);
	}
	
	public List<SpmsVO> list() throws Exception{
		return dao.list();
	}
	
	
	public void update(SpmsVO vo) throws Exception {
		dao.update(vo);
	}
	
	public void delete(int projectNo) throws Exception {
		dao.delete(projectNo);
	}
	

}
