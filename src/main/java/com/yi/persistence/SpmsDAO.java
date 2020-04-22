package com.yi.persistence;

import java.util.List;

import com.yi.domain.SpmsVO;

public interface SpmsDAO {
	public void insert(SpmsVO vo) throws Exception;
	public SpmsVO readByNo(int projectNo) throws Exception;
	public List<SpmsVO> list() throws Exception;
	public void update(SpmsVO vo) throws Exception;
	public void delete(int projectNo) throws Exception;	
}
