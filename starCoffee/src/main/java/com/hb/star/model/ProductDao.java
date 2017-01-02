package com.hb.star.model;

import java.util.List;

public interface ProductDao {
	List selectAll();
	List selectList(String product);
	void insertOne(ProductVo bean);
	ProductVo selectOne(int no);
	void updateOne(ProductVo bean);
	void deleteOne(int no);
}
