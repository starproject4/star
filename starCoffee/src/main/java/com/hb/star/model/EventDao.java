package com.hb.star.model;

import java.util.List;

public interface EventDao {
	List selectAll();
	List selectList(String event);
	int selectNo();
	void insertOne(EventVo bean);
	EventVo selectOne(int no);
	List selectImg(int no);
	void updateOne(EventVo bean);
	void deleteEdit(String newfilename);
	void deleteOne(int no);
}
