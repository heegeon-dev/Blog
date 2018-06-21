package com.test.blog.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.test.blog.dao.Sharedao;

public class MenuService {

	@Autowired
	private Sharedao dao;
	
	public Object getList(String sqlMapId, Object dataMap) {
		Object resultData = dao.getList(sqlMapId,dataMap);
		
		return resultData;
	}
	public Object getObject(String sqlMapId, Object dataMap) {
		
		Object resultData = dao.getObject(sqlMapId,dataMap);
		
		return resultData;
	}
}
