package com.test.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.blog.dao.Sharedao;

@Service
public class AuthorityService {

	@Autowired
	private Sharedao dao;
	
	public Object getList(Object dataMap) {
		String sqlMapId = "authority.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object getObject(Object dataMap) {
		String sqlMapId = "authority.read";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object getAuthority(Object dataMap) {
		String sqlMapId= "authority.name";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
		
	}
}
