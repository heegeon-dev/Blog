package com.test.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.blog.dao.Sharedao;

@Service
public class signupService {

	@Autowired
	private Sharedao dao;
	
	public Object signup_insert(String sqlMapId, Object dataMap) {
		
		String sqlId ="signup.insert"; 
		Object resultData = dao.signup_insert(sqlId,dataMap);
		
		String sqlId2 ="signup.insert_rel";
		dao.signup_insert(sqlId2, dataMap);
		
		return resultData;
	}
	
}
