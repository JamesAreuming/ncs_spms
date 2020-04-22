package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.SpmsVO;

@Repository
public class SpmsDAOImpl implements SpmsDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "mappers.SpmsMapper.";
			
	@Override
	public void insert(SpmsVO vo) throws Exception {
		sqlSession.insert(namespace+"insert", vo);
		
	}

	@Override
	public SpmsVO readByNo(int projectNo) throws Exception {
		return sqlSession.selectOne(namespace+"readByNo", projectNo);
	}

	@Override
	public List<SpmsVO> list() throws Exception {
		return sqlSession.selectList(namespace+"list");
	}

	@Override
	public void update(SpmsVO vo) throws Exception {
		sqlSession.update(namespace + "update", vo);
		
	}

	@Override
	public void delete(int projectNo) throws Exception {
		sqlSession.delete(namespace+"delete",projectNo);
		
	}

}
