package com.huaji.dao;

import java.util.List;

import com.huaji.domain.po.Floor;

public interface FloorDao extends GenericDao<Floor, Integer> {
	public List<Floor> findFloorsByPostId(int id);
}
