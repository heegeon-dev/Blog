package com.test.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.blog.dao.Menudao;

@Service
public class MenuService {

	@Autowired
	private Menudao dao;
	
	public Object getList(String sqlMapId, Object dataMap) {
		Object resultData = dao.getList(sqlMapId,dataMap);
		
		return resultData;
	}
	public Object getObject(String sqlMapId, Object dataMap) {
		
		Object resultData = dao.getObject(sqlMapId,dataMap);
		
		return resultData;
	}
	
}
